import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioSelectboxesComponent extends FormioDataComponent {
  Map _value = {};

  FormioSelectboxesComponent(super.formioJSONElement) {
    _value = {};
  }

  @override
  Object? getValue() {
    return _value;
  }

  @override
  Widget render() {
    // ignore: unnecessary_new
    return new ListView(
        children: _getCheckBoxListTiles(super.formioJSONElement["values"]));
  }

  List<Widget> _getCheckBoxListTiles(List values) {
    return values
        .map((e) => CheckboxListTile(
              title: Text(e['label']),
              value: true,
              onChanged: (bool? valueChanged) {
                _value[e['key']] = valueChanged;
              },
            ))
        .toList();
  }
}
