import 'package:flutter/material.dart';

CrossAxisAlignment methodCrossAxisAlignment(Map<String, dynamic> data) {
  return switch (data['crossAxisAlignment']) {
    'baseline' => CrossAxisAlignment.baseline,
    'center' => CrossAxisAlignment.center,
    'end' => CrossAxisAlignment.end,
    'start' => CrossAxisAlignment.start,
    'stretch' => CrossAxisAlignment.stretch,
    _ => CrossAxisAlignment.center,
  };
}