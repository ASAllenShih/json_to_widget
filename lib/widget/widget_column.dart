import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/children.dart';
import 'package:json_to_widget/method/cross_axis_alignment.dart';
import 'package:json_to_widget/method/main_axis_alignment.dart';
import 'package:json_to_widget/method/main_axis_size.dart';
import 'package:json_to_widget/method/spacing.dart';
import 'package:json_to_widget/method/text_baseline.dart';
import 'package:json_to_widget/method/text_direction.dart';
import 'package:json_to_widget/method/vertical_direction.dart';
import 'package:json_to_widget/widget_parser.dart';

class WidgetColumn extends WidgetParser {
  @override
  String get name => 'Column';
  @override
  Widget parse(
    JsonToWidget jsonToWidget,
    Map<String, dynamic> data,
    BuildContext buildContext,
  ) {
    return Column(
      mainAxisAlignment: methodMainAxisAlignment(data),
      mainAxisSize: methodMainAxisSize(data),
      crossAxisAlignment: methodCrossAxisAlignment(data),
      textDirection: methodTextDirection(data),
      verticalDirection: methodVerticalDirection(data),
      textBaseline: methodTextBaseline(data),
      spacing: methodSpacing(data),
      children: methodChildren(jsonToWidget, data, buildContext),
    );
  }
}
