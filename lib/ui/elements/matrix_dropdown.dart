import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/custom_scroll_behavior.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js/ui/validators.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_survey_js/utils.dart';
import 'matrix_dropdown_base.dart';

Widget matrixDropdownBuilder(BuildContext context, s.Elementbase element, {ElementConfiguration? configuration}) {
  return MatrixDropdownElement(
    formControlName: element.name!,
    matrix: element as s.Matrixdropdown,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class MatrixDropdownElement extends StatelessWidget {
  final String formControlName;
  final s.Matrixdropdown matrix;

  final scrollController = ScrollController();
  MatrixDropdownElement({Key? key, required this.formControlName, required this.matrix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveNestedForm(
      formControlName: formControlName,
      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        List<TableRow> list = <TableRow>[];

        /// Add title bar
        list.add(TableRow(
            decoration: const BoxDecoration(
              //color: Colors.grey,
              color: Color(0xFFDFDFDF),
            ),
            children: [
              const TableCell(child: Text('')),
              ...((matrix.columns?.toList() ?? []).map((e) => TableCell(
                    child: MatrixDropdownTitle(e),
                  )))
            ]));
        (matrix.rows?.toList() ?? []).asMap().forEach((i, row) {
          list.add(TableRow(
              decoration: i % 2 != 0
                  ? const BoxDecoration(
                      //color: Colors.grey,
                      color: Color(0xFFF4F4F4),
                    )
                  : null,
              children: [
                //Row name
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Text(row.castToItemvalue().text?.getLocalizedText(context) ?? ""),
                    )),
                ...(matrix.columns?.toList() ?? []).map((column) {
                  final q = matrixDropdownColumnToQuestion(matrix, column);
                  final v = questionToValidators(q);

                  return TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ReactiveNestedForm(
                        formControlName: row.castToItemvalue().value!.toString(),
                        child: Builder(
                          builder: (context) {
                            final fg = ReactiveForm.of(context) as FormGroup;
                            final c = fg.control(column.name!);
                            //TODO runner
                            // //concat validators
                            // final newV = HashSet<ValidatorFunction>.of(
                            //     [...c.validators, ...v]).toList();
                            c.setValidators([]);
                            return SurveyConfiguration.of(context)!.factory.resolve(context, q, configuration: const ElementConfiguration(hasTitle: false));
                          },
                        ),
                      ));
                }).toList()
              ]));
        });

        final screenWidth = MediaQuery.of(context).size.width;
        final colLength = (matrix.columns?.toList() ?? []).length;
        final colFixedWidth = (screenWidth - 27) / ((colLength > 3) ? 3 : colLength + 1); // Max 3 columns in the screen
        return ScrollConfiguration(
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
                    ))));
      }),
    );
  }
}
