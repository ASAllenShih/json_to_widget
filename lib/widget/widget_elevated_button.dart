import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/child.dart';
import 'package:json_to_widget/method/on_focus_change.dart';
import 'package:json_to_widget/method/on_hover.dart';
import 'package:json_to_widget/method/on_long_press.dart';
import 'package:json_to_widget/method/on_pressed.dart';
import 'package:json_to_widget/widget_parser.dart';

class WidgetElevatedButton extends WidgetParser {
  @override
  String get name => 'ElevatedButton';

  @override
  Widget parse(
    JsonToWidget jsonToWidget,
    Map<String, dynamic> data,
    BuildContext buildContext,
  ) {
    return ElevatedButton(
      onPressed: () => methodOnPressed(jsonToWidget, data),
      onLongPress: () => methodOnLongPress(jsonToWidget, data),
      onHover: (value) => methodOnHover(jsonToWidget, data, value),
      onFocusChange: (value) => methodOnFocusChange(jsonToWidget, data, value),
      autofocus: data['autofocus'] ?? false,
      child: methodChild(jsonToWidget, data, buildContext),
    );
  }
}
