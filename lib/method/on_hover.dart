import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/listener.dart';

void methodOnHover(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  bool isHovering,
) {
  return methodTypeListener(jsonToWidget, 'onHover', data, forceValue: isHovering);
}
