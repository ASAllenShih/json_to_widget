import 'package:flutter/material.dart';
import 'package:json_to_widget/type/type_vertical_direction.dart';

VerticalDirection methodVerticalDirection(Map<String, dynamic> data) {
  if (data['verticalDirection'] is String?) {
    return TypeVerticalDirection().to(data['verticalDirection']) ??
        VerticalDirection.down;
  }
  return VerticalDirection.down;
}
