import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioSelectComponent extends FormioDataComponent {
  Object? _value;

  FormioSelectComponent(super.formioJSONElement) {
    _value = {};
  }

  @override
  Object? getValue() {
    return _value;
  }

  @override
  Widget render({value = const []}) {
    // ignore: unnecessary_new
    return DropdownButton(
      value: super.formioJSONElement["data"]["values"][0]['value'],
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (Object? value) {
        _value = value;
      },
      items: _getDropdownMenuItems(super.formioJSONElement["data"]["values"]),
    );
  }

  List<DropdownMenuItem<Object>> _getDropdownMenuItems(List jsonElementItems) {
    return jsonElementItems
        .map((e) => DropdownMenuItem<String>(
              value: e['value'],
              child: Text(e['label']),
            ))
        .toList();
  }
}
