import 'package:flutter/widgets.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/widget.dart';

Widget? methodTitle(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  BuildContext buildContext,
) {
  final dynamic title = data['title'];
  return methodTypeWidget(jsonToWidget, title, buildContext);
}
