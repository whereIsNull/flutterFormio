// ignore_for_file: unnecessary_string_escapes

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_formio/components/formio_component.dart';

import 'model/task.dart';

class FormScreen extends StatefulWidget {
  FormScreen({super.key});

  static const routeName = '/form';

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  Widget? content;

  FormioForm form = FormioForm.build(_getDummedForm());

  @override
  Widget build(BuildContext context) {
    final task = ModalRoute.of(context)!.settings.arguments as Task;

    return Scaffold(
      appBar: AppBar(
        title: Text(task.activityName),
      ),
      body: form.renderCurrentElement(),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlinedButton.icon(
              onPressed: () => {
                if (form.hasBackward())
                  {
                    setState(() {
                      form.goBackward();
                    })
                  }
              },
              icon: const Icon(
                Icons.keyboard_arrow_left,
              ),
              label: const Text("Anterior"),
              style: _getStyle(form.hasBackward()),
            ),
            OutlinedButton.icon(
              onPressed: () => {
                if (form.hasForward())
                  {
                    setState(() {
                      form.goForward();
                    })
                  }
              },
              icon: const Icon(
                Icons.keyboard_arrow_right,
              ),
              label: const Text("Siguiente"),
              style: _getStyle(form.hasBackward()),
            )
          ],
        ),
      ),
    );
  }

  _getStyle(bool enabled) {
    var bckColor = enabled ? Colors.green : Colors.grey;
    var style = OutlinedButton.styleFrom(
      primary: Colors.black,
      backgroundColor: bckColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }

  static List _getDummedForm() {
    Map<String, dynamic> form = jsonDecode(_getDummedFormStr());
    List components = form['components'];
    print(components);
    return components;
  }

  static String _getDummedFormStr() {
    return '''
    {
      "components": [
        {
          "label": "Password",
          "tableView": false,
          "key": "password",
          "type": "password",
          "input": true,
          "protected": true
        },
        {
          "label": "Checkbox",
          "tableView": false,
          "key": "checkbox",
          "type": "checkbox",
          "input": true
        },
        {
          "label": "Select Boxes",
          "optionsLabelPosition": "right",
          "tableView": false,
          "values": [
            {
              "label": "val1",
              "value": "val1",
              "shortcut": ""
            },
            {
              "label": "val2",
              "value": "val2",
              "shortcut": ""
            }
          ],
          "key": "selectBoxes",
          "type": "selectboxes",
          "input": true,
          "inputType": "checkbox"
        },
        {
          "label": "Select",
          "widget": "choicesjs",
          "tableView": true,
          "data": {
            "values": [
              {
                "label": "val1",
                "value": "val1"
              },
              {
                "label": "val2",
                "value": "val2"
              }
            ]
          },
          "key": "select",
          "type": "select",
          "input": true
        },
        {
          "label": "Radio",
          "optionsLabelPosition": "right",
          "inline": false,
          "tableView": false,
          "values": [
            {
              "label": "val1",
              "value": "val1",
              "shortcut": ""
            },
            {
              "label": "val2",
              "value": "val2",
              "shortcut": ""
            }
          ],
          "key": "radio",
          "type": "radio",
          "input": true
        },
        {
          "label": "Submit",
          "showValidations": false,
          "tableView": false,
          "key": "submit1",
          "type": "button",
          "input": true
        },
        {
          "label": "Date / Time",
          "tableView": false,
          "datePicker": {
            "disableWeekends": false,
            "disableWeekdays": false
          },
          "enableMinDateInput": false,
          "enableMaxDateInput": false,
          "key": "dateTime",
          "type": "datetime",
          "input": true,
          "widget": {
            "type": "calendar",
            "displayInTimezone": "viewer",
            "locale": "en",
            "useLocaleSettings": false,
            "allowInput": true,
            "mode": "single",
            "enableTime": true,
            "noCalendar": false,
            "format": "yyyy-MM-dd hh:mm a",
            "hourIncrement": 1,
            "minuteIncrement": 1,
            "time_24hr": false,
            "minDate": null,
            "disableWeekends": false,
            "disableWeekdays": false,
            "maxDate": null
          }
        },
        {
          "label": "Columns",
          "columns": [
            {
              "components": [],
              "width": 6,
              "offset": 0,
              "push": 0,
              "pull": 0,
              "size": "md",
              "currentWidth": 6
            },
            {
              "components": [],
              "width": 6,
              "offset": 0,
              "push": 0,
              "pull": 0,
              "size": "md",
              "currentWidth": 6
            }
          ],
          "key": "columns",
          "type": "columns",
          "input": false,
          "tableView": false
        },
        {
          "label": "Tabs",
          "components": [
            {
              "label": "Tab1 1",
              "key": "tab1",
              "components": []
            },
            {
              "label": "Tab2",
              "key": "tab2",
              "components": []
            }
          ],
          "key": "tabs",
          "type": "tabs",
          "input": false,
          "tableView": false
        },
        {
          "type": "button",
          "label": "Submit",
          "key": "submit",
          "disableOnInvalid": true,
          "input": true,
          "tableView": false
        },
        {
          "label": "Data Grid",
          "reorder": false,
          "addAnotherPosition": "bottom",
          "layoutFixed": false,
          "enableRowGroups": false,
          "initEmpty": false,
          "tableView": false,
          "defaultValue": [
            {}
          ],
          "key": "dataGrid",
          "type": "datagrid",
          "input": true,
          "components": []
        }
      ]
    }
  ''';
  }
}
