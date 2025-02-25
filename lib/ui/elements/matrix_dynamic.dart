import 'package:flutter/material.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/ui/custom_scroll_behavior.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_wrap_form_array.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/validators.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'matrix_dropdown_base.dart';

Widget matrixDynamicBuilder(BuildContext context, s.Elementbase element, {ElementConfiguration? configuration}) {
  return MatrixDynamicElement(
    formControlName: element.name!,
    matrix: element as s.Matrixdynamic,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class MatrixDynamicElement extends StatelessWidget {
  final String formControlName;
  final s.Matrixdynamic matrix;
  final scrollController = ScrollController();
  MatrixDynamicElement({Key? key, required this.formControlName, required this.matrix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    createNew({Object? value}) {
      //create new formGroup
      return elementsToFormGroup(context, (matrix.columns?.toList() ?? []).map((column) => matrixDropdownColumnToQuestion(matrix, column)).toList(),
          value: value);
    }

    return ReactiveWrapFormArray(
      wrapper: (BuildContext context, FormArray<Object?> formArray, Widget child) {
        final effectiveDecoration = const InputDecoration().applyDefaults(Theme.of(context).inputDecorationTheme);

        return InputDecorator(
          decoration: effectiveDecoration.copyWith(errorText: getErrorTextFromFormControl(context, formArray)),
          child: child,
        );
      },
      formArrayName: formControlName,
      builder: (context, formArray, child) {
        final formGroups = <FormGroup>[];
        bool modified = false;
        for (final c in formArray.controls) {
          if (c is FormGroup) {
            formGroups.add(c);
          } else {
            formGroups.add(createNew(value: c.value));
            modified = true;
          }
        }
        if (modified) {
          formArray.clear();
          formArray.addAll(formGroups);
        }
        final controls = formArray.controls.cast<FormGroup>().toList();
        List<TableRow> list = <TableRow>[];

        /// Add title bar
        list.add(TableRow(
            decoration: const BoxDecoration(
              //color: Colors.grey,
              color: Color(0xFFDFDFDF),
            ),
            children: [
              ...((matrix.columns?.toList() ?? []).map((e) => TableCell(
                    child: MatrixDropdownTitle(e),
                  ))),
              const TableCell(child: SizedBox())
            ]));
        controls.asMap().forEach((i, c) {
          list.add(TableRow(
              decoration: i % 2 != 0
                  ? const BoxDecoration(
                      //color: Colors.grey,
                      color: Color(0xFFF4F4F4),
                    )
                  : null,
              children: [
                ...(matrix.columns?.toList() ?? []).map((column) {
                  final q = matrixDropdownColumnToQuestion(matrix, column);
                  final v = questionToValidators(q);

                  return TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ReactiveNestedForm(
                        formGroup: c,
                        child: Builder(
                          builder: (context) {
                            final fg = ReactiveForm.of(context) as FormGroup;
                            final c = fg.control(column.name!);
                            //concat validators
                            // final newV = HashSet<ValidatorFunction>.of(
                            //     [...c.validators, ...v]).toList();
                            //TODO runner
                            c.setValidators([]);
                            return SurveyConfiguration.of(context)!.factory.resolve(context, q, configuration: const ElementConfiguration(hasTitle: false));
                          },
                        ),
                      ));
                }).toList(),
                TableCell(
                  child: SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        formArray.remove(c);
                      },
                      child: Text(S.of(context).remove),
                    ),
                  )),
                )
              ]));
        });

        final screenWidth = MediaQuery.of(context).size.width;
        final colLength = (matrix.columns?.toList() ?? []).length;
        final colFixedWidth = (screenWidth - 32) / ((colLength > 3) ? 3 : colLength); // Max 3 columns in the screen
        return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              ScrollConfiguration(
                  behavior: CustomScrollBehavior(),
                  child: Scrollbar(
                      controller: scrollController,
                      child: SingleChildScrollView(
                          controller: scrollController,
                          scrollDirection: Axis.horizontal,
                          child: Table(
                            defaultColumnWidth: FixedColumnWidth(colFixedWidth), //const IntrinsicColumnWidth(),
                            border: TableBorder.all(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            // columnWidths: map,
                            children: list,
                          )))),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    formArray.add(createNew());
                  },
                  child: Text(S.of(context).add),
                ),
              )
            ],
          );
        });
      },
    );
  }
}
