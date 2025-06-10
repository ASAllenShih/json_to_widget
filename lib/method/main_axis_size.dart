import 'package:flutter/material.dart';

MainAxisSize methodMainAxisSize(Map<String, dynamic> data) {
  return switch (data['mainAxisSize']) {
    'max' => MainAxisSize.max,
    'min' => MainAxisSize.min,
    _ => MainAxisSize.max,
  };
}
