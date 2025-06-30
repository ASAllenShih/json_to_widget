import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_listener.dart';

void methodOnLongPress(JsonToWidget jsonToWidget, Map<String, dynamic> data) {
  return TypeListener().to(jsonToWidget, 'onLongPress', data);
}
