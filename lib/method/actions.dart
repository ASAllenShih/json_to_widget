import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/widget_list.dart';

List<Widget>? methodActions(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  BuildContext buildContext,
) {
  final dynamic actions = data['actions'];
  return methodTypeWidgetList(jsonToWidget, actions, buildContext);
}
