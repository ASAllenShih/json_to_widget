import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_widget.dart';

Widget? methodLeading(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  BuildContext buildContext,
) {
  if (data['leading'] is Map<String, dynamic>?) {
    return TypeWidget().to(jsonToWidget, data['leading'], buildContext);
  }
  return null;
}
