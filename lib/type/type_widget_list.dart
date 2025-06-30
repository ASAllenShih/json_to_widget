import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_widget.dart';

class TypeWidgetList {
  List<Widget>? to(
    JsonToWidget jsonToWidget,
    Iterable<Map<String, dynamic>?>? children,
    BuildContext buildContext,
  ) {
    if (children != null) {
      final List<Widget> childrenWidgets = children
          .map<Widget?>(
            (child) => child != null
                ? TypeWidget().to(jsonToWidget, child, buildContext)
                : null,
          )
          .whereType<Widget>()
          .toList();
      return childrenWidgets.isNotEmpty ? childrenWidgets : null;
    }
    return null;
  }
}
