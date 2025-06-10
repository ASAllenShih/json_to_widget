import 'package:flutter/material.dart';

VerticalDirection methodVerticalDirection(Map<String, dynamic> data) {
  return switch (data['verticalDirection']) {
    'down' => VerticalDirection.down,
    'up' => VerticalDirection.up,
    _ => VerticalDirection.down,
  };
}
