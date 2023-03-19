import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioTextfieldComponent extends FormioDataComponent {
  FormioTextfieldComponent(super.formioJSONElement);

  @override
  void getValue() {
    // TODO: implement getValue
  }

  @override
  Widget render() {
    return Column(
      children: [
        Text(super.formioJSONElement['label']),
        TextFormField(
          initialValue: 'Hola',
        )
      ],
    );
  }
}
