import 'package:flutter/material.dart';
import 'formio_component_factory.dart' as form_factory;

class FormioForm {
  final _components = <FormioComponent>[];
  final _data = {};
  int _currentComponentIndex = 0;

  FormioForm.build(List components) {
    components.forEach((element) {
      Map<String, dynamic> formElement = element as Map<String, dynamic>;
      FormioComponent formComponent =
          (form_factory.formioFactory[formElement['type']])!(formElement)
              as FormioComponent;
      _components.add(formComponent);
    });
  }

  void addComponent(FormioComponent component) {
    _components.add(component);
  }

  Map getData() {
    return _data;
  }

  void updateData(String key, var value) {}

  bool hasForward() {
    return _currentComponentIndex < _components.length - 1;
  }

  bool hasBackward() {
    return _currentComponentIndex > 0;
  }

  Widget goForward() {
    if (hasForward()) {
      _currentComponentIndex++;
      return _components[_currentComponentIndex].render();
    } else {
      throw Exception("Element not found");
    }
  }

  Widget goBackward() {
    if (hasBackward()) {
      _currentComponentIndex--;
      return _components[_currentComponentIndex].render();
    } else {
      throw Exception("Element not found");
    }
  }

  Widget renderCurrentElement() {
    return _components[_currentComponentIndex].render();
  }
}

abstract class FormioComponent {
  final Map<String, dynamic> formioJSONElement;

  FormioComponent(this.formioJSONElement);

  Widget render();
}
