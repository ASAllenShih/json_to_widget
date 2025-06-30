import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';

class TypeWidget {
  Widget? to(
    JsonToWidget jsonToWidget,
    Map<String, dynamic>? child,
    BuildContext buildContext,
  ) {
    return jsonToWidget.buildFromMap(
      child,
      buildContext,
      jsonToWidget: jsonToWidget,
    );
  }
}
