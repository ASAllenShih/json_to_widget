import 'package:flutter/material.dart';
import 'package:json_to_widget/type/type_text_direction.dart';

TextDirection? methodTextDirection(Map<String, dynamic> data) {
  if (data['textDirection'] is String?) {
    return TypeTextDirection().to(data['textDirection']);
  }
  return null;
}
