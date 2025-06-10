import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';

Widget? methodTypeWidget(
  JsonToWidget jsonToWidget,
  dynamic child,
  BuildContext buildContext,
) {
  if (child is Map) {
    return jsonToWidget.buildFromMap(
      child.cast<String, dynamic>(),
      buildContext,
      jsonToWidget: jsonToWidget,
    );
  }
  return null;
}
