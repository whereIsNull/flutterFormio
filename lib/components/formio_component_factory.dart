import 'formio_textfield_component.dart';
import 'formio_checkbox_component.dart';
import 'formio_textarea_component.dart';
import 'formio_number_component.dart';
import 'formio_password_component.dart';
import 'formio_selectboxes_component.dart';
import 'formio_select_component.dart';
import 'formio_radio_component.dart';
import 'formio_button_component.dart';

Map<String, Function> formioFactory = {
  // data
  "textfield": (Map<String, dynamic> formioJSONElement) =>
      FormioTextfieldComponent(formioJSONElement),
  "textarea": (Map<String, dynamic> formioJSONElement) =>
      FormioTextareaComponent(formioJSONElement),
  "number": (Map<String, dynamic> formioJSONElement) =>
      FormioNumberComponent(formioJSONElement),
  "password": (Map<String, dynamic> formioJSONElement) =>
      FormioPasswordComponent(formioJSONElement),
  "checkbox": (Map<String, dynamic> formioJSONElement) =>
      FormioCheckboxComponent(formioJSONElement),
  "selectboxes": (Map<String, dynamic> formioJSONElement) =>
      FormioSelectboxesComponent(formioJSONElement),
  "select": (Map<String, dynamic> formioJSONElement) =>
      FormioSelectComponent(formioJSONElement),
  "radio": (Map<String, dynamic> formioJSONElement) =>
      FormioRadioComponent(formioJSONElement),
  "button": (Map<String, dynamic> formioJSONElement) =>
      FormioButtonComponent(formioJSONElement),
  "calendar": (Map<String, dynamic> formioJSONElement) =>
      FormioTextfieldComponent(formioJSONElement),
  "datetime": (Map<String, dynamic> formioJSONElement) =>
      FormioTextfieldComponent(formioJSONElement),
  // layout
  "columns": (Map<String, dynamic> formioJSONElement) =>
      FormioTextfieldComponent(formioJSONElement),
  "tabs": (Map<String, dynamic> formioJSONElement) =>
      FormioTextfieldComponent(formioJSONElement),
  "datagrid": (Map<String, dynamic> formioJSONElement) =>
      FormioTextfieldComponent(formioJSONElement),
  "datamap": (Map<String, dynamic> formioJSONElement) =>
      FormioTextfieldComponent(formioJSONElement),
};
