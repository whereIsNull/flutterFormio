import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioCheckboxComponent extends FormioDataComponent {
  Object? _value;

  FormioCheckboxComponent(super._formioJSONElement);

  @override
  Object? getValue() {
    return _value;
  }

  @override
  Widget render() {
    return Checkbox(
      checkColor: Colors.white,
      // fillColor: MaterialStateProperty.resolveWith(getColor),
      value: false,
      onChanged: (bool? value) {
        _value = value;
      },
    );
  }
}
