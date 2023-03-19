import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioRadioComponent extends FormioDataComponent {
  String? _value;

  FormioRadioComponent(super.formioJSONElement) {
    _value = "";
  }

  @override
  Object? getValue() {
    return _value;
  }

  @override
  Widget render({value = const []}) {
    // ignore: unnecessary_new
    _value = super.formioJSONElement["values"][0]['value'];
    return Column(
        children: _getRadioListTiles(super.formioJSONElement["values"]));
  }

  List<Widget> _getRadioListTiles(List values) {
    return values
        .map((e) => RadioListTile<String>(
              title: Text(e['label']),
              value: e['value'],
              groupValue: _value,
              onChanged: (String? value) {
                _value = value;
              },
            ))
        .toList();
  }
}
