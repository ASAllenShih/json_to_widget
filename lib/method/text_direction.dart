import 'package:flutter/material.dart';

TextDirection? methodTextDirection(Map<String, dynamic> data) {
  return switch (data['textDirection']) {
    'ltr' => TextDirection.ltr,
    'rtl' => TextDirection.rtl,
    _ => null,
  };
}
