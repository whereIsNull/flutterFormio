import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioTextareaComponent extends FormioDataComponent {
  String? _value;

  FormioTextareaComponent(super.formioJSONElement);

  @override
  void getValue() {
    // TODO: implement getValue
  }

  @override
  Widget render() {
    _value = super.formioJSONElement['value'];
    return TextFormField(
      initialValue: this._value,
      maxLines: 4,
    );
  }
}
