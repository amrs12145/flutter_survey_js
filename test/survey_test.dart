import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data.dart';

void main() {
  group('JsonSerializable', () {
    group('showQuestionNumbers', () {
      test('parses as "on" string when json value is `true` boolean', () {
        const String expected = 'on';
        final Survey survey = Survey.fromJson(
          {
            "title": "Software developer survey.",
            "pages": [
              {
                "elements": [
                  {
                    "type": "text",
                    "isRequired": true,
                    "name": "question 1",
                  },
                ]
              }
            ],
            "showQuestionNumbers": true,
          },
        );
        final String? actual = survey.showQuestionNumbers;
        expect(actual, expected);
      });

      test('parses as "off" string when json value is `false` boolean', () {
        const String expected = 'off';
        final Survey survey = Survey.fromJson(
          {
            "title": "Software developer survey.",
            "pages": [
              {
                "elements": [
                  {
                    "type": "text",
                    "isRequired": true,
                    "name": "question 1",
                  },
                ]
              }
            ],
            "showQuestionNumbers": false,
          },
        );
        final String? actual = survey.showQuestionNumbers;
        expect(actual, expected);
      });

      test('does not modify string json values', () {
        const String expected = 'some_showQuestionNumbers_value';
        final Survey survey = Survey.fromJson(
          {
            "title": "Software developer survey.",
            "pages": [
              {
                "elements": [
                  {
                    "type": "text",
                    "isRequired": true,
                    "name": "question 1",
                  },
                ]
              }
            ],
            "showQuestionNumbers": expected,
          },
        );
        final String? actual = survey.showQuestionNumbers;
        expect(actual, expected);
      });
    });
  });

  group('fromPage', () {
    test('maps page description to survey description', () {
      final String description = 'This is my survey';
      final actual =
          Survey.fromPage(TestData.page(description: description)).description;
      final expected = description;
      expect(actual, expected);
    });

    test('maps page elements to survey questions', () {
      final List<ElementBase> elements = [
        TestData.elementBase(name: 'element 1'),
        TestData.elementBase(name: 'element 2'),
      ];
      final actual =
          Survey.fromPage(TestData.page(elements: elements)).questions;
      final expected = elements;
      expect(actual, expected);
    });

    test('maps page maxTimeToFinish to survey maxTimeToFinish', () {
      final int maxTimeToFinish = 60;
      final actual =
          Survey.fromPage(TestData.page(maxTimeToFinish: maxTimeToFinish))
              .maxTimeToFinish;
      final expected = maxTimeToFinish;
      expect(actual, expected);
    });

    test('maps page questionsOrder to survey questionsOrder', () {
      final String questionsOrder = 'random';
      final actual =
          Survey.fromPage(TestData.page(questionsOrder: questionsOrder))
              .questionsOrder;
      final expected = questionsOrder;
      expect(actual, expected);
    });

    test('maps page title to survey title', () {
      final String title = 'My survey';
      final actual = Survey.fromPage(TestData.page(title: title)).title;
      final expected = title;
      expect(actual, expected);
    });
  });
}
