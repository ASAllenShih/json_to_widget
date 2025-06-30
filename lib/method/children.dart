import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_widget_list.dart';

List<Widget> methodChildren(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  BuildContext buildContext,
) {
  if (data['children'] is Iterable<Map<String, dynamic>?>?) {
    return TypeWidgetList().to(
          jsonToWidget,
          data['children'] as Iterable<Map<String, dynamic>?>?,
          buildContext,
        ) ??
        <Widget>[];
  }
  return <Widget>[];
}
