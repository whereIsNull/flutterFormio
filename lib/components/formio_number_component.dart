import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioNumberComponent extends FormioDataComponent {
  String? _value;

  FormioNumberComponent(super.formioJSONElement);

  @override
  void getValue() {
    // TODO: implement getValue
  }

  @override
  Widget render() {
    return TextFormField(
      initialValue: super.formioJSONElement['value'],
      keyboardType: TextInputType.number,
    );
  }
}
