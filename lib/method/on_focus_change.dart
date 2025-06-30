import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_listener.dart';

void methodOnFocusChange(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  bool hasFocus,
) {
  return TypeListener().to(jsonToWidget, 'onFocusChange', data, forceValue: hasFocus);
}
