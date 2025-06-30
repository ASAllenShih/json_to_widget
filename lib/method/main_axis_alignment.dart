import 'package:flutter/material.dart';
import 'package:json_to_widget/type/type_main_axis_alignment.dart';

MainAxisAlignment methodMainAxisAlignment(Map<String, dynamic> data) {
  if (data['mainAxisAlignment'] is String?) {
    return TypeMainAxisAlignment().to(data['mainAxisAlignment']) ??
        MainAxisAlignment.start;
  }
  return MainAxisAlignment.start;
}
