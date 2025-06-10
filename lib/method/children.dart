import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/widget_list.dart';

List<Widget> methodChildren(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  BuildContext buildContext,
) {
  final dynamic children = data['children'];
  return methodTypeWidgetList(jsonToWidget, children, buildContext) ?? <Widget>[];
}
