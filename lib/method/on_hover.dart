import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_listener.dart';

void methodOnHover(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  bool isHovering,
) {
  return TypeListener().to(jsonToWidget, 'onHover', data, forceValue: isHovering);
}
