import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/widget.dart';

Widget? methodLeading(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  BuildContext buildContext,
) {
  final dynamic leading = data['leading'];
  return methodTypeWidget(jsonToWidget, leading, buildContext);
}
