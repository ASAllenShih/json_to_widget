import 'package:flutter/material.dart';
import 'package:json_to_widget/type/type_text_baseline.dart';

TextBaseline? methodTextBaseline(Map<String, dynamic> data) {
  if (data['textBaseline'] is String?) {
    return TypeTextBaseline().to(data['textBaseline']);
  }
  return null;
}
