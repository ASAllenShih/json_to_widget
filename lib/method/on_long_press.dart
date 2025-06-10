import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/listener.dart';

void methodOnLongPress(JsonToWidget jsonToWidget, Map<String, dynamic> data) {
  return methodTypeListener(jsonToWidget, 'onLongPress', data);
}
