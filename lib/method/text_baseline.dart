import 'package:flutter/material.dart';

TextBaseline? methodTextBaseline(Map<String, dynamic> data) {
  return switch (data['textBaseline']) {
    'alphabetic' => TextBaseline.alphabetic,
    'ideographic' => TextBaseline.ideographic,
    _ => null,
  };
}