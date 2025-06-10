import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/widget.dart';
import 'package:json_to_widget/widget_parser.dart';

class WidgetCenter extends WidgetParser {
  @override
  String get name => 'Center';

  @override
  Widget parse(
    JsonToWidget jsonToWidget,
    Map<String, dynamic> data,
    BuildContext buildContext,
  ) {
    return Center(
      child: methodTypeWidget(jsonToWidget, data['child'], buildContext),
    );
  }
}
