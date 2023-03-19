import 'formio_component.dart';

abstract class FormioDataComponent extends FormioComponent {
  FormioDataComponent(super.formioJSONElement);
  Object? getValue();
}
