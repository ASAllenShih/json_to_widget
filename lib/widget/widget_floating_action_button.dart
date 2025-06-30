import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/on_pressed.dart';
import 'package:json_to_widget/type/type_widget.dart';
import 'package:json_to_widget/widget_parser.dart';

class WidgetFloatingActionButton extends WidgetParser {
  @override
  String get name => 'FloatingActionButton';

  @override
  Widget parse(
    JsonToWidget jsonToWidget,
    Map<String, dynamic> data,
    BuildContext buildContext,
  ) {
    return FloatingActionButton(
      onPressed: () => methodOnPressed(jsonToWidget, data),
      tooltip: data['tooltip'] is String ? data['tooltip'] : null,
      child: TypeWidget().to(jsonToWidget, data['child'], buildContext),
    );
  }
}
