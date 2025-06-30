import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_widget_list.dart';

List<Widget>? methodActions(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  BuildContext buildContext,
) {
  if (data['actions'] is Iterable<Map<String, dynamic>?>?) {
    return TypeWidgetList().to(jsonToWidget, data['actions'], buildContext);
  }
  return null;
}
