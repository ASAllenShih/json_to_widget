import 'package:flutter/material.dart';
import 'package:json_to_widget/type/type_cross_axis_alignment.dart';

CrossAxisAlignment methodCrossAxisAlignment(Map<String, dynamic> data) {
  if (data['crossAxisAlignment'] is String?) {
    return TypeCrossAxisAlignment().to(data['crossAxisAlignment']) ??
        CrossAxisAlignment.start;
  }
  return CrossAxisAlignment.start;
}
