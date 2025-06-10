import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/widget.dart';

List<Widget>? methodTypeWidgetList(
  JsonToWidget jsonToWidget,
  dynamic children,
  BuildContext buildContext,
) {
  if (children is Iterable) {
    final List<Widget> childrenWidgets = children
        .map<Widget?>(
          (child) => child is Map
              ? methodTypeWidget(jsonToWidget, child, buildContext)
              : null,
        )
        .whereType<Widget>()
        .toList();
    return childrenWidgets.isNotEmpty ? childrenWidgets : null;
  }
  return null;
}
