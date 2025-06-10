import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/text_align.dart';
import 'package:json_to_widget/method/text_direction.dart';
import 'package:json_to_widget/widget_parser.dart';

class WidgetText extends WidgetParser {
  @override
  String get name => 'Text';
  @override
  Widget parse(
    JsonToWidget jsonToWidget,
    Map<String, dynamic> data,
    BuildContext buildContext,
  ) {
    return Text(
      (data['data'] is String) ? data['data'] : '',
      textAlign: methodTextAlign(data),
      textDirection: methodTextDirection(data),
    );
  }
}
