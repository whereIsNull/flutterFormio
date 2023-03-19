import 'package:flutter/material.dart';
import 'formio_data_component.dart';

class FormioButtonComponent extends FormioDataComponent {
  String? _value;

  FormioButtonComponent(super.formioJSONElement) {
    _value = "";
  }

  @override
  Object? getValue() {
    return _value;
  }

  @override
  Widget render({text = "Aceptar"}) {
    // ignore: unnecessary_new
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side: BorderSide(width: 2, color: Color.fromARGB(255, 223, 137, 24)),
        backgroundColor: Color.fromARGB(255, 223, 137, 24),
        foregroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
