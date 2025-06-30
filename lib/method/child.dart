import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_widget.dart';

Widget? methodChild(
  JsonToWidget jsonToWidget,
  Map<String, dynamic> data,
  BuildContext buildContext,
) {
  if (data['child'] is Map<String, dynamic>?) {
    return TypeWidget().to(
      jsonToWidget,
      data['child'] as Map<String, dynamic>?,
      buildContext,
    );
  }
  return null;
}
