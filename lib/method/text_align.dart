import 'package:flutter/material.dart';
import 'package:json_to_widget/type/type_text_align.dart';

TextAlign? methodTextAlign(Map<String, dynamic> data) {
  if (data['textAlign'] is String?) {
    return TypeTextAlign().to(data['textAlign']);
  }
  return null;
}
