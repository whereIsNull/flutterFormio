import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioPasswordComponent extends FormioDataComponent {
  String? _value;

  FormioPasswordComponent(super.formioJSONElement);

  @override
  void getValue() {
    // TODO: implement getValue
  }

  @override
  Widget render({String value = ""}) {
    return Column(
      children: [
        Text(
          super.formioJSONElement['label'],
          textAlign: TextAlign.left,
        ),
        TextFormField(
          initialValue: 'Hola',
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        )
      ],
    );
  }
}
