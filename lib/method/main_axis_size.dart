import 'package:flutter/material.dart';
import 'package:json_to_widget/type/type_main_axis_size.dart';

MainAxisSize methodMainAxisSize(Map<String, dynamic> data) {
  if (data['mainAxisSize'] is String?) {
    return TypeMainAxisSize().to(data['mainAxisSize']) ?? MainAxisSize.max;
  }
  return MainAxisSize.max;
}
