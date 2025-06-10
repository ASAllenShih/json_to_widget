import 'package:flutter/material.dart';

TextAlign? methodTextAlign(Map<String, dynamic> data) {
  return switch (data['textAlign']) {
    'center' => TextAlign.center,
    'end' => TextAlign.end,
    'justify' => TextAlign.justify,
    'left' => TextAlign.left,
    'right' => TextAlign.right,
    'start' => TextAlign.start,
    _ => null,
  };
}
