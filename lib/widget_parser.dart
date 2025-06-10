import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';

abstract class WidgetParser {
  String get name;
  Widget parse(
    JsonToWidget jsonToWidget,
    Map<String, dynamic> data,
    BuildContext buildContext,
  );
}
