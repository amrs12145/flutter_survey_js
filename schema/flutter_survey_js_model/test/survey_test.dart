import 'package:flutter_survey_js_model/flutter_survey_js_model.dart';
import 'package:test/test.dart';

void main() {
  //https://github.com/surveyjs/survey-library/blob/master/examples/knockout/index.js
  const singlePageJson = {
    "showProgressBar": "both",
    "description": "Survey Description",
    "title": "Survey New Design Test",
    "logo": "https://picsum.photos/200",
    "logoPosition": "left",
    "questions": [
      {
        "name": "unsupported",
        "type": "unsupported",
        "title": "Unsupported Question"
      },
      {
        "name": "signature",
        "type": "signaturepad",
        "title": "Sign here",
        "isRequired": true
      },
      {
        "name": "name",
        "type": "text",
        "title": "Text",
        "placeholder": "Jon Snow",
        "isRequired": true
      },
      {
        "name": "birthdate",
        "type": "text",
        "inputType": "date",
        "title": "Text Date",
        "isRequired": true
      },
      {
        "name": "color",
        "type": "text",
        "inputType": "color",
        "title": "Text Color"
      },
      {
        "name": "email",
        "type": "text",
        "inputType": "email",
        "title": "Text Email",
        "placeholder": "jon.snow@nightwatch.org",
        "isRequired": true,
        "validators": [
          {"type": "email"}
        ]
      },
      {
        "type": "dropdown",
        "name": "cars",
        "title": "Dropdown",
        "isRequired": true,
        "showNoneItem": true,
        "colCount": 4,
        "choices": [
          "Ford",
          "Vauxhall",
          "Volkswagen",
          "Nissan",
          "Audi",
          "Mercedes-Benz",
          "BMW",
          "Peugeot",
          "Toyota",
          "Citroen"
        ]
      },
      {
        "type": "tagbox",
        "name": "cars2",
        "title": "Tagbox",
        "showNoneItem": true,
        "choices": [
          "Ford",
          "Vauxhall",
          "Volkswagen",
          "Nissan",
          "Audi",
          "Mercedes-Benz",
          "BMW",
          "Peugeot",
          "Toyota",
          "Citroen"
        ]
      },
      {
        "type": "checkbox",
        "name": "car",
        "title": "Checkbox",
        "isRequired": true,
        "showSelectAllItem": true,
        "showNoneItem": true,
        "colCount": 4,
        "choices": [
          "Ford",
          "Vauxhall",
          "Volkswagen",
          "Nissan",
          "Audi",
          "Mercedes-Benz",
          "BMW",
          "Peugeot",
          "Toyota",
          "Citroen"
        ]
      },
      {
        "type": "radiogroup",
        "name": "carss",
        "title": "Radiogroup",
        "isRequired": true,
        "colCount": 4,
        "choices": [
          "None",
          "Ford",
          "Vauxhall",
          "Volkswagen",
          "Nissan",
          "Audi",
          "Mercedes-Benz",
          "BMW",
          "Peugeot",
          "Toyota",
          "Citroen"
        ]
      },
      {
        "type": "image",
        "name": "banner",
        "imageHeight": "300px",
        "imageWidth": "450px",
        "imageLink": "https://picsum.photos/200"
      },
      {
        "type": "image",
        "name": "banner",
        "contentMode": "video",
        "imageHeight": "300px",
        "imageWidth": "450px",
        "imageLink":
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
      },
      {
        "type": "imagepicker",
        "name": "choosepicture",
        "title": "Imagepicker",
        "imageHeight": "150px",
        "imageWidth": "225px",
        "choices": [
          {"value": "lion", "imageLink": "https://picsum.photos/200"},
          {"value": "giraffe", "imageLink": "https://picsum.photos/200"},
          {"value": "panda", "imageLink": "https://picsum.photos/200"},
          {"value": "camel", "imageLink": "https://picsum.photos/200"}
        ]
      },
      {
        "type": "imagepicker",
        "name": "choosevideo",
        "title": "Imagepicker",
        "imageHeight": "300px",
        "imageWidth": "450px",
        "contentMode": "video",
        "choices": [
          {
            "value": "short_but_high",
            "imageLink":
                "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
          },
          {
            "value": "long_but_poor",
            "imageLink":
                "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"
          }
        ]
      },
      {
        "type": "boolean",
        "name": "bool",
        "title": "Boolean",
        "label": "Are you 21 or older?",
        "isRequired": true
      },
      {
        "type": "matrix",
        "name": "Quality",
        "title": "Matrix",
        "columns": [
          {"value": 1, "text": "Strongly Disagree"},
          {"value": 2, "text": "Disagree"},
          {"value": 3, "text": "Neutral"},
          {"value": 4, "text": "Agree"},
          {"value": 5, "text": "Strongly Agree"}
        ],
        "rows": [
          {"value": "affordable", "text": "Product is affordable"},
          {
            "value": "does what it claims",
            "text": "Product does what it claims"
          },
          {
            "value": "better than others",
            "text": "Product is better than other products on the market"
          },
          {"value": "easy to use", "text": "Product is easy to use"}
        ]
      },
      {
        "type": "matrix",
        "name": "planningPerformance",
        "title": "Matrix Rubric",
        "columns": [
          "Ineffective",
          "Improvement Necessary",
          "Effective",
          "Highly Effective"
        ],
        "rows": [
          {"value": "dataToPlan", "text": "Utilizes Assessment Data to Plan"},
          {
            "value": "ambitiousGoals",
            "text": "Ambitious and Measurable Achievement Goal"
          },
          {
            "value": "developsStandards",
            "text":
                "Develops Standards.<br/>Based Unit Plans and Assessments.<br/>Evaluation Values."
          },
          {
            "value": "createsObjective",
            "text": "Creates Objective - Driven Lesson Plans and Assessments"
          }
        ],
        "cells": {
          "dataToPlan": {
            "Ineffective":
                "Teacher rarely or never uses formal and informal assessment data when planning",
            "Improvement Necessary":
                "Teacher uses formal and informal assessment data to formulate <br/> - Achievement goals, unit plans, or lesson plans, but not all of these",
            "Effective":
                "Teacher uses formal and informal assessment data to formulate <br/>- Achievement goals, unit plans, and lesson plans",
            "Highly Effective":
                "Teacher uses formal and informal assessment data to formulate achievement goals, unit plans, and lesson plans<br/>- Incorporates differentiated instructional strategies in planning to reach every student at his/her level of understanding"
          },
          "ambitiousGoals": {
            "Ineffective":
                "Teacher rarely or never develops achievement goals for the class, or goals are developed but are too general to be helpful for planning purposes",
            "Improvement Necessary":
                "Teacher develops an annual student achievement goalthat lacks one or more of these traits:<br/>- Measurable<br/>- Aligned to content standards<br/>- Includes benchmarks to help monitor learning and inform interventions throughout the year",
            "Effective":
                "Teacher develops an annual student achievement goal that<br/>- Is measurable<br/>- Is aligned to content standards<br/>- Includes benchmarks to help monitor learning and inform interventions throughout the year",
            "Highly Effective":
                "Teacher develops an annual student achievement goal that<br/>- Is measurable<br/>- Is aligned to content standards where applicable<br/>- Includes benchmarks to help monitor learning and informinterventions throughout the year"
          },
          "developsStandards": {
            "Ineffective":
                "Teacher rarely or never plans by identifying content standards that students will master in each unit, or there is little to no evidence that teacher plans units at all",
            "Improvement Necessary":
                "Based on achievement goals, teacher plans units but omits one or more of these steps:<br/>- Identifying content standards that students will master in each unit<br/>- Creating assessments before planning units<br/>- Allocating an instructionally appropriate amount of time for each unit",
            "Effective":
                "Based on achievement goals, teacher plans units by<br/>- Identifying content standards that students will master in each unit<br/>- Creating assessments before each unit begins for backwards planning<br/>- Allocating an instructionally appropriate amount of time for each unit",
            "Highly Effective":
                "Based on achievement goals, teacher plans units by<br/>- Identifying content standards that students will master in each unit<br/>- Creating assessments before each unit begins for backwards planning<br/>- Allocating an instructionally appropriate amount of time for each unit"
          },
          "createsObjective": {
            "Ineffective":
                "Teacher rarely or never uses a system to track student assessment/progress data and/or has an ineffective grading system",
            "Improvement Necessary":
                "Teacher uses a data tracking system to record student assessment / progress data and maintain a grading system but fails in one or more of the following steps<br/>- Use data to analyze student progress toward mastery or to plan future lessons / units<br/>- Have a grading system that appropriately aligns with student learning goals",
            "Effective":
                "Teacher uses an effective data tracking system for<br/>- Recording student assessment / progress data<br/>- Analyzing student progress towards mastery and planning future lessons/units accordingly<br/>- Maintaining a grading system aligned to student learning goals",
            "Highly Effective":
                "Teacher uses an effective data tracking system that<br/>- Records student assessment / progress data<br/>- Analyzes student progress toward mastery and plans future lessons/units accordingly<br/>- Maintains a grading system aligned to student learning goals"
          }
        }
      },
      {
        "type": "matrixdropdown",
        "name": "frameworksRate",
        "title": "Matrixdropdown",
        "choices": ["Excelent", "Good", "Average", "Fair", "Poor"],
        "columns": [
          {
            "name": "using",
            "title": "Do you use it?",
            "choices": ["Yes", "No"],
            "cellType": "radiogroup"
          },
          {
            "name": "experience",
            "title": "How long do you use it?",
            "choices": [
              {"value": 5, "text": "3-5 years"},
              {"value": 2, "text": "1-2 years"},
              {"value": 1, "text": "less than a year"}
            ]
          },
          {
            "name": "strength",
            "title": "What is main strength?",
            "choices": ["Easy", "Compact", "Fast", "Powerfull"],
            "cellType": "checkbox"
          },
          {
            "name": "knowledge",
            "title": "Please describe your experience",
            "cellType": "text"
          },
          {"name": "rate", "title": "Please rate the framework itself"}
        ],
        "rows": [
          {"value": "angularv1", "text": "angularjs v1.x"},
          {"value": "angularv2", "text": "angularjs v2"},
          {"value": "knockoutjs"},
          {"value": "reactjs"}
        ]
      },
      {
        "type": "matrixdynamic",
        "name": "teachersRate",
        "title": "Matrix Dynamic",
        "addRowText": "Add Subject",
        "horizontalScroll": true,
        "columnMinWidth": "130px",
        "columnColCount": 1,
        "cellType": "radiogroup",
        "choices": [
          {"value": 1, "text": "Yes"},
          {"value": 0, "text": "Sometimes"},
          {"value": -1, "text": "No"}
        ],
        "columns": [
          {
            "name": "subject",
            "cellType": "dropdown",
            "title": "Select a subject",
            "isRequired": true,
            "minWidth": "300px",
            "choices": [
              "English: American Literature",
              "English: British and World Literature",
              "Math: Consumer Math",
              "Math: Practical Math",
              "Math: Developmental Algebra",
              "Math: Continuing Algebra",
              "Math: Pre-Algebra",
              "Math: Algebra",
              "Math: Geometry",
              "Math: Integrated Mathematics",
              "Science: Physical Science",
              "Science: Earth Science",
              "Science: Biology",
              "Science: Chemistry",
              "History: World History",
              "History: Modern World Studies",
              "History: U.S. History",
              "History: Modern U.S. History",
              "Social Sciences: U.S. Government and Politics",
              "Social Sciences: U.S. and Global Economics",
              "World Languages: Spanish",
              "World Languages: French",
              "World Languages: German",
              "World Languages: Latin",
              "World Languages: Chinese",
              "World Languages: Japanese"
            ]
          },
          {"name": "explains", "title": "Clearly explains the objectives"},
          {"name": "interesting", "title": "Makes class interesting"},
          {"name": "effective", "title": "Uses class time effectively"},
          {"name": "knowledge", "title": "Knows the subject matter"},
          {
            "name": "recognition",
            "title": "Recognizes and acknowledges effort"
          },
          {"name": "inform", "title": "Keeps me informed of my progress"},
          {
            "name": "opinion",
            "title": "Encourages and accepts different opinions"
          },
          {"name": "respect", "title": "Has the respect of the student"},
          {
            "name": "cooperation",
            "title": "Encourages cooperation and participation"
          },
          {"name": "parents", "title": "Communicates with my parents"},
          {
            "name": "selfthinking",
            "title": "Encourages me to think for myself"
          },
          {
            "name": "frusturation",
            "cellType": "comment",
            "title": "Is there anything about this class that frustrates you?",
            "minWidth": "250px"
          },
          {
            "name": "likeTheBest",
            "cellType": "comment",
            "title": "What do you like best about this class and/or teacher?",
            "minWidth": "250px"
          },
          {
            "name": "improvements",
            "cellType": "comment",
            "title":
                "What do you wish this teacher would do differently that would improve this class?",
            "minWidth": "250px"
          }
        ],
        "rowCount": 2
      },
      {
        "type": "matrixdynamic",
        "name": "Current Level of Function",
        "title": "Matrix Dynamic (vertical columns)",
        "columnLayout": "vertical",
        "minRowCount": 1,
        "maxRowCount": 5,
        "columns": [
          {
            "name": "Date",
            "title": "Date",
            "cellType": "text",
            "inputType": "date"
          },
          {"name": "AmbDistance", "title": "Amb Distance", "cellType": "text"},
          {
            "name": "Amb Assistance",
            "cellType": "dropdown",
            "choices": ["D", "MAX", "MOD", "MIN"]
          },
          {"name": "Standing Tolerance", "cellType": "text"},
          {"name": "UE Strength", "cellType": "text"},
          {"name": "Cognitive Function", "cellType": "comment"}
        ],
        "choices": [1],
        "cellType": "comment",
        "confirmDelete": true,
        "addRowText": "Add Date +",
        "removeRowText": "Remove"
      },
      {
        "type": "matrixdynamic",
        "name": "orderList",
        "rowCount": 1,
        "minRowCount": 1,
        "title": "Matrix Dynamic (totals)",
        "addRowText": "Add new item",
        "columns": [
          {
            "name": "id",
            "title": "Id",
            "cellType": "expression",
            "expression": "{rowIndex}"
          },
          {
            "name": "phone_model",
            "title": "Phone model",
            "isRequired": true,
            "totalType": "count",
            "totalFormat": "Items count: {0}",
            "choices": [
              {"value": "iPhone7-32", "text": "iPhone 7, 32GB", "price": 449},
              {"value": "iPhone7-128", "text": "iPhone 7, 128GB", "price": 549},
              {
                "value": "iPhone7Plus-32",
                "text": "iPhone 7 Plus, 32GB",
                "price": 569
              },
              {
                "value": "iPhone7Plus-128",
                "text": "iPhone 7 Plus, 128GB",
                "price": 669
              },
              {"value": "iPhone8-64", "text": "iPhone 8, 64GB", "price": 599},
              {"value": "iPhone8-256", "text": "iPhone 8, 256GB", "price": 749},
              {
                "value": "iPhone8Plus-64",
                "text": "iPhone 8 Plus, 64GB",
                "price": 699
              },
              {
                "value": "iPhone8Plus-256",
                "text": "iPhone 8 Plus, 256GB",
                "price": 849
              },
              {"value": "iPhoneXR-64", "text": "iPhone XR, 64GB", "price": 749},
              {
                "value": "iPhoneXR-128",
                "text": "iPhone XR, 128GB",
                "price": 799
              },
              {
                "value": "iPhoneXR-256",
                "text": "iPhone XR, 256GB",
                "price": 899
              },
              {"value": "iPhoneXS-64", "text": "iPhone XS, 64GB", "price": 999},
              {
                "value": "iPhoneXS-256",
                "text": "iPhone XS, 256GB",
                "price": 1149
              },
              {
                "value": "iPhoneXS-512",
                "text": "iPhone XS, 512GB",
                "price": 1349
              },
              {
                "value": "iPhoneXSMAX-64",
                "text": "iPhone XS Max, 64GB",
                "price": 1099
              },
              {
                "value": "iPhoneXSMAX-256",
                "text": "iPhone XS Max, 256GB",
                "price": 1249
              },
              {
                "value": "iPhoneXSMAX-512",
                "text": "iPhone XS, 512GB",
                "price": 1449
              }
            ]
          },
          {
            "name": "price",
            "title": "Price",
            "cellType": "expression",
            "expression": "getItemPrice('phone_model')",
            "displayStyle": "currency"
          },
          {
            "name": "quantity",
            "title": "Quantity",
            "isRequired": true,
            "cellType": "text",
            "inputType": "number",
            "totalType": "sum",
            "totalFormat": "Total phones: {0}",
            "validators": [
              {"type": "numeric", "minValue": 1, "maxValue": 100}
            ]
          },
          {
            "name": "total",
            "title": "Total",
            "cellType": "expression",
            "expression": "{row.quantity} * {row.price}",
            "displayStyle": "currency",
            "totalType": "sum",
            "totalDisplayStyle": "currency",
            "totalFormat": "Total: {0}"
          }
        ]
      },
      {
        "name": "vatProcents",
        "type": "text",
        "title": "VAT (in %)",
        "defaultValue": 20,
        "inputType": "number",
        "validators": [
          {"type": "numeric", "minValue": 0, "maxValue": 40}
        ]
      },
      {
        "name": "vatTotal",
        "type": "expression",
        "title": "VAT",
        "expression": "{orderList-total.total} * {vatProcents} / 100",
        "displayStyle": "currency",
        "startWithNewLine": false
      },
      {
        "name": "total",
        "type": "expression",
        "title": "Total",
        "expression": "{orderList-total.total} + {vatTotal}",
        "displayStyle": "currency",
        "startWithNewLine": false
      },
      {
        "type": "multipletext",
        "name": "pricelimit",
        "title": "Multipletext",
        "colCount": 2,
        "items": [
          {
            "name": "mostamount",
            "title": "Most amount you would every pay for a product like ours"
          },
          {
            "name": "leastamount",
            "title": "The least amount you would feel comfortable paying"
          }
        ]
      },
      {
        "type": "rating",
        "name": "satisfaction",
        "title": "Rating",
        "minRateDescription": "Not Satisfied",
        "maxRateDescription": "Completely satisfied"
      },
      {
        "type": "ranking",
        "name": "smartphone-features",
        "title":
            "Please rank the following smartphone features in order of importance:",
        "choices": [
          "Battery life",
          "Screen size",
          "Storage space",
          "Camera quality",
          "Durability",
          "Processor power",
          "Price"
        ]
      },
      {"type": "comment", "name": "suggestions", "title": "Comment"},
      {
        "type": "file",
        "title": "File",
        "name": "image",
        "storeDataAsText": false,
        "showPreview": true,
        "imageWidth": 150,
        "maxSize": 102400
      },
      {
        "type": "panel",
        "title": "Panel",
        "innerIndent": 1,
        "state": "expanded",
        "elements": [
          {
            "type": "checkbox",
            "choices": [
              {"value": "1", "text": "Customer relationship"},
              {"value": "2", "text": "Service quality"},
              {"value": "3", "text": "Support response time"}
            ],
            "name": "What should be improved?"
          },
          {
            "type": "comment",
            "name": "suggestions",
            "title": "What would make you more satisfied with the Product?"
          }
        ]
      },
      {
        "type": "paneldynamic",
        "name": "relatives",
        "title": "Panel Dynamic",
        "renderMode": "progressTop",
        "templateTitle": "Information about: {panel.relativeType}",
        "templateElements": [
          {
            "name": "relativeType",
            "type": "dropdown",
            "title": "Relative",
            "choices": [
              "father",
              "mother",
              "brother",
              "sister",
              "son",
              "daughter"
            ],
            "isRequired": true
          },
          {
            "name": "isalive",
            "type": "radiogroup",
            "title": "Alive?",
            "startWithNewLine": false,
            "isRequired": true,
            "colCount": 0,
            "choices": ["Yes", "No"]
          },
          {
            "name": "liveage",
            "type": "dropdown",
            "title": "Age",
            "isRequired": true,
            "startWithNewLine": false,
            "visibleIf": "{panel.isalive} = 'Yes'",
            "choicesMin": 1,
            "choicesMax": 115
          },
          {
            "name": "deceasedage",
            "type": "dropdown",
            "title": "Deceased Age",
            "isRequired": true,
            "startWithNewLine": false,
            "visibleIf": "{panel.isalive} = 'No'",
            "choices": [
              {"value": -1, "text": "Unknown"}
            ],
            "choicesMin": 1,
            "choicesMax": 115
          },
          {
            "name": "causeofdeathknown",
            "type": "radiogroup",
            "title": "Cause of Death Known?",
            "isRequired": true,
            "colCount": 0,
            "startWithNewLine": false,
            "visibleIf": "{panel.isalive} = 'No'",
            "choices": ["Yes", "No"]
          },
          {
            "name": "causeofdeath",
            "type": "text",
            "title": "Cause of Death",
            "isRequired": true,
            "startWithNewLine": false,
            "visibleIf":
                "{panel.isalive} = 'No' and {panel.causeofdeathknown} = 'Yes'"
          },
          {
            "type": "panel",
            "name": "moreInfo",
            "state": "expanded",
            "title": "Detail Information about: {panel.relativeType}",
            "elements": [
              {
                "type": "matrixdynamic",
                "name": "relativeillness",
                "title": "Describe the illness or condition.",
                "rowCount": 0,
                "columns": [
                  {
                    "name": "illness",
                    "cellType": "dropdown",
                    "title": "Illness/Condition",
                    "choices": [
                      "Cancer",
                      "Heart Disease",
                      "Diabetes",
                      "Stroke/TIA",
                      "High Blood Pressure",
                      "High Cholesterol or Triglycerides",
                      "Liver Disease",
                      "Alcohol or Drug Abuse",
                      "Anxiety, Depression or Psychiatric Illness",
                      "Tuberculosis",
                      "Anesthesia Complications",
                      "Genetic Disorder",
                      "Other – describe"
                    ],
                    "isRequired": true
                  },
                  {
                    "name": "description",
                    "cellType": "text",
                    "title": "Describe",
                    "isRequired": true
                  }
                ]
              }
            ]
          }
        ],
        "panelCount": 2,
        "panelAddText": "Add a blood relative",
        "panelRemoveText": "Remove the relative"
      },
      {
        "type": "panel",
        "title": "Expression Example Panel",
        "innerIndent": 1,
        "elements": [
          {
            "type": "paneldynamic",
            "name": "items",
            "title": "Items",
            "keyName": "name",
            "showQuestionNumbers": "none",
            "templateTitle": "item #{panelIndex}",
            "templateElements": [
              {
                "type": "text",
                "name": "name",
                "title": "Name:",
                "isRequired": true
              },
              {
                "type": "text",
                "name": "cost",
                "inputType": "number",
                "title": "Item Cost:",
                "isRequired": true,
                "startWithNewLine": false
              },
              {
                "type": "text",
                "name": "vendor",
                "title": "Vendor:",
                "isRequired": true
              },
              {
                "type": "text",
                "name": "quantity",
                "inputType": "number",
                "title": "Quantity:",
                "isRequired": true,
                "startWithNewLine": false
              },
              {
                "type": "text",
                "name": "link",
                "title": "Link:",
                "isRequired": true
              },
              {
                "type": "expression",
                "name": "total",
                "title": "Total Item Cost:",
                "expression": "{panel.cost} * {panel.quantity}",
                "displayStyle": "currency",
                "currency": "EUR",
                "startWithNewLine": false
              }
            ],
            "minPanelCount": 1,
            "panelAddText": "Add another  item",
            "panelRemoveText": "Remove item"
          },
          {
            "type": "panel",
            "title": "Totals",
            "elements": [
              {
                "type": "expression",
                "name": "totalQuantity",
                "title": "Total  Quantity:",
                "expression": "sumInArray({items}, 'quantity'"
              },
              {
                "type": "expression",
                "name": "totalCost",
                "title": "Total Cost:",
                "expression": "sumInArray({items}, 'total'",
                "displayStyle": "currency",
                "currency": "EUR",
                "startWithNewLine": false
              }
            ]
          }
        ]
      }
    ]
  };

  test("Serialize Deserialize Single Page Survey", () {
    final s = surveyFromJson(singlePageJson);
    final serialized = surveyToJson(s);
    expect(surveyFromJson(serialized), s);
  });

  const multiPageJson = {
    "title": "Complex Survey",
    "showQuestionNumbers": false,
    "pages": [
      {
        "name": "page1",
        "elements": [
          {
            "type": "text",
            "name": "text_question",
            "placeholder": "Enter some text here..."
          },
          {
            "type": "checkbox",
            "name": "checkbox_question",
            "choices": ["item1"]
          },
          {
            "type": "radiogroup",
            "name": "radiogroup_question",
            "choices": ["item1"]
          },
          {
            "type": "dropdown",
            "name": "dropdown_question",
            "choices": ["item1"],
            "showOtherItem": true,
            "showNoneItem": true
          },
          {
            "type": "comment",
            "name": "comment_question",
            "placeholder": "Enter a comment here..."
          },
          {"type": "rating", "name": "rating_question"},
          {
            "type": "imagepicker",
            "name": "imagepicker_question",
            "choices": [
              {
                "value": "item1",
                "imageLink":
                    "data:image/png;base64,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"
              }
            ]
          },
          {
            "type": "boolean",
            "name": "boolean_question",
            "labelTrue": "true label text",
            "labelFalse": "flase label text"
          },
          {
            "type": "image",
            "name": "image_question",
            "imageLink":
                "data:image/png;base64,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"
          },
          {
            "type": "html",
            "name": "html_question",
            "html": "<div class='sjs-html-question'>html text</div>"
          },
          {
            "type": "signaturepad",
            "name": "signature_question",
            "defaultValue":
                "data:image/png;base64,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"
          },
          {
            "type": "expression",
            "name": "expression_question",
            "expression": "1"
          },
          {
            "type": "file",
            "name": "file_question",
            "defaultValue": [
              {
                "name":
                    "data:image/png;base64,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",
                "type": "image/png",
                "content":
                    "data:image/png;base64,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"
              }
            ],
            "maxSize": 0
          },
          {
            "type": "matrix",
            "name": "matrix_question",
            "columns": ["Column 1"],
            "rows": ["Row 1"]
          },
          {
            "type": "matrixdropdown",
            "name": "matrixdropdown_question",
            "columns": [
              {"name": "Column 1"}
            ],
            "choices": [1],
            "rows": ["Row 1"]
          },
          {
            "type": "matrixdynamic",
            "name": "matrixdynamic_question",
            "columns": [
              {"name": "Column 1"}
            ],
            "choices": [1],
            "rowCount": 1
          },
          {
            "type": "multipletext",
            "name": "multipletext_question",
            "items": [
              {"name": "text1"}
            ]
          },
          {
            "type": "panel",
            "name": "panel",
            "elements": [
              {"type": "text", "name": "panel_question"}
            ],
            "title": "panel_title",
            "state": "collapsed"
          },
          {
            "type": "paneldynamic",
            "name": "paneldynamic",
            "templateElements": [
              {"type": "text", "name": "paneldynamic_question"}
            ],
            "panelCount": 1
          },
          {
            "type": "ranking",
            "name": "ranking_question",
            "choices": ["item1", "item2"]
          }
        ]
      },
      {
        "name": "page2",
        "elements": [
          {
            "type": "text",
            "name": "name",
            "state": "expanded",
            "title": "Please enter your name:"
          },
          {
            "type": "text",
            "name": "price",
            "title": "Please enter price",
            "inputType": "number"
          },
          {
            "type": "text",
            "name": "birthdate",
            "title": "Your birthdate:",
            "inputType": "date"
          },
          {
            "type": "text",
            "name": "color",
            "title": "Your favorite color:",
            "inputType": "color"
          },
          {
            "type": "text",
            "name": "email",
            "title": "Your e-mail:",
            "isRequired": true,
            "validators": [
              {"type": "email"}
            ],
            "inputType": "email"
          },
          {
            "type": "text",
            "name": "datetime",
            "title": "Your lunch time:",
            "inputType": "datetime"
          },
          {
            "type": "text",
            "name": "datetime-local",
            "title": "Your supper time:",
            "inputType": "datetime-local"
          },
          {
            "type": "text",
            "name": "month",
            "title": "Your favorite month:",
            "inputType": "month"
          },
          {
            "type": "text",
            "name": "password",
            "title": "Please enter password:",
            "inputType": "password"
          },
          {
            "type": "text",
            "name": "range",
            "title": "Please set price range:",
            "inputType": "range"
          },
          {
            "type": "text",
            "name": "tel",
            "title": "Enter your phone number",
            "inputType": "tel"
          },
          {
            "type": "text",
            "name": "time",
            "title": "When do you watch TV?",
            "inputType": "time"
          },
          {
            "type": "text",
            "name": "url",
            "title": "Add link to your site please",
            "inputType": "url"
          },
          {
            "type": "text",
            "name": "week",
            "title": "Mark any week which you want",
            "inputType": "week"
          }
        ]
      }
    ]
  };
  test("Serialize Deserialize Multi Page Survey", () {
    final s = surveyFromJson(multiPageJson);
    final serialized = surveyToJson(s);
    expect(surveyFromJson(serialized), s);
  });

  group('JsonSerializable', () {
    group('showQuestionNumbers', () {
      test('parses as `on` when json value is `true` boolean', () {
        final Survey survey = surveyFromJson(
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
        )!;
        expect(survey.showQuestionNumbers?.isOn, true);
      });

      test('parses as `off` when json value is `false` boolean', () {
        final Survey survey = surveyFromJson(
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
        )!;
        expect(survey.showQuestionNumbers?.isOff, true);
      });

      test('parses as `on` when json value is "on" string', () {
        final Survey survey = surveyFromJson(
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
            "showQuestionNumbers": "on",
          },
        )!;
        expect(survey.showQuestionNumbers?.isOn, true);
      });

      test('parses as `off` when json value is "off" string', () {
        final Survey survey = surveyFromJson(
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
            "showQuestionNumbers": "off",
          },
        )!;
        expect(survey.showQuestionNumbers?.isOff, true);
      });

      test('parses as `onPage` when json value is "onPage" string', () {
        final Survey survey = surveyFromJson(
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
            "showQuestionNumbers": "onPage",
          },
        )!;
        expect(survey.showQuestionNumbers?.isOnPage, true);
      });
    });

    test('prioritizes elements over pages.elements', () {
      const pageElementTitle = 'we should not see this';
      const elementsElementTitle = 'we should see this';
      final Survey survey = surveyFromJson(
        {
          "title": "Single Page Survey",
          "pages": [
            {
              "name": "page1",
              "elements": [
                {
                  "type": "checkbox",
                  "name": pageElementTitle,
                  "choices": ["Item 1", "Item 2", "Item 3"]
                }
              ]
            }
          ],
          "elements": [
            {
              "type": "checkbox",
              "name": elementsElementTitle,
              "choices": ["Item 1", "Item 2", "Item 3"]
            }
          ]
        },
      )!;
      expect(
          (survey.pages!.first.elements!.first.anyOf.values[0] as Checkbox)
              .name,
          elementsElementTitle);
    });

    test('prioritizes questions over pages.elements', () {
      const pageElementTitle = 'we should not see this';
      const questionsElementTitle = 'we should see this';
      final Survey survey = surveyFromJson(
        {
          "title": "Single Page Survey",
          "pages": [
            {
              "name": "page1",
              "elements": [
                {
                  "type": "checkbox",
                  "name": pageElementTitle,
                  "choices": ["Item 1", "Item 2", "Item 3"]
                }
              ]
            }
          ],
          "questions": [
            {
              "type": "checkbox",
              "name": questionsElementTitle,
              "choices": ["Item 1", "Item 2", "Item 3"]
            }
          ]
        },
      )!;
      expect(
          (survey.pages!.first.questions!.first.anyOf.values[0] as Checkbox)
              .name,
          questionsElementTitle);
    });
  });

  group('from page model JSON', () {
    test('maps page description to survey description', () {
      final String expected = 'Survey Description';
      final actual = surveyFromJson({'description': expected})!
          .description
          ?.getTextFromLocale();
      expect(actual, expected);
    });

    test('maps page elements to survey.page.elements', () {
      final String element1Name = 'some signature';
      final String element1Type = 'signaturepad';
      final String element1Title = 'Sign here';
      final bool element1IsRequired = true;
      final String element2Name = 'some text';
      final String element2Type = 'text';
      final String element2Title = 'Text';
      final String element2Placeholder = 'Jon Snow';
      final bool element2IsRequired = true;
      final survey = surveyFromJson({
        "elements": [
          {
            "name": element1Name,
            "type": element1Type,
            "title": element1Title,
            "isRequired": element1IsRequired,
          },
          {
            "name": element2Name,
            "type": element2Type,
            "title": element2Title,
            "placeholder": element2Placeholder,
            "isRequired": element2IsRequired,
          },
        ]
      })!;
      final page = survey.pages?.first;
      final elements = page?.elements;
      final firstQuestion =
          elements!.first!.anyOf.values.values.single as Signaturepad;
      final secondQuestion = elements!.last!.anyOf.values.values.single as Text;
      expect(firstQuestion.name, element1Name);
      expect(firstQuestion.type, element1Type);
      expect(firstQuestion.title?.getTextFromLocale(), element1Title);
      expect(firstQuestion.isRequired, element1IsRequired);
      expect(secondQuestion.name, element2Name);
      expect(secondQuestion.type, element2Type);
      expect(secondQuestion.title?.getTextFromLocale(), element2Title);
      expect(
          secondQuestion.placeholder?.getTextFromLocale(), element2Placeholder);
      expect(secondQuestion.isRequired, element2IsRequired);
    });

    test('maps page questions to survey.page.questions', () {
      final String element1Name = 'some signature';
      final String element1Type = 'signaturepad';
      final String element1Title = 'Sign here';
      final bool element1IsRequired = true;
      final String element2Name = 'some text';
      final String element2Type = 'text';
      final String element2Title = 'Text';
      final String element2Placeholder = 'Jon Snow';
      final bool element2IsRequired = true;
      final survey = surveyFromJson({
        "questions": [
          {
            "name": element1Name,
            "type": element1Type,
            "title": element1Title,
            "isRequired": element1IsRequired,
          },
          {
            "name": element2Name,
            "type": element2Type,
            "title": element2Title,
            "placeholder": element2Placeholder,
            "isRequired": element2IsRequired,
          },
        ]
      })!;
      final page = survey.pages?.first;
      final elements = page?.questions;
      final firstQuestion =
          elements!.first!.anyOf.values.values.single as Signaturepad;
      final secondQuestion = elements!.last!.anyOf.values.values.single as Text;
      expect(firstQuestion.name, element1Name);
      expect(firstQuestion.type, element1Type);
      expect(firstQuestion.title?.getTextFromLocale(), element1Title);
      expect(firstQuestion.isRequired, element1IsRequired);
      expect(secondQuestion.name, element2Name);
      expect(secondQuestion.type, element2Type);
      expect(secondQuestion.title?.getTextFromLocale(), element2Title);
      expect(
          secondQuestion.placeholder?.getTextFromLocale(), element2Placeholder);
      expect(secondQuestion.isRequired, element2IsRequired);
    });
  });
}
