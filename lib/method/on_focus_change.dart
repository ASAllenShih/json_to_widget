import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/listener.dart';

void methodOnFocusChange(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  bool hasFocus,
) {
  return methodTypeListener(jsonToWidget, 'onFocusChange', data, forceValue: hasFocus);
}
