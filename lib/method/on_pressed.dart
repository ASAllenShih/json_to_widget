import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_listener.dart';

void methodOnPressed(JsonToWidget jsonToWidget, Map<String, dynamic> data) {
  return TypeListener().to(jsonToWidget, 'onPressed', data);
}
