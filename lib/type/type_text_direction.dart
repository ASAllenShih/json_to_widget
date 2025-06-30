import 'package:flutter/material.dart';
import 'package:json_to_widget/type_parser.dart';

class TypeTextDirection extends TypeParser<TextDirection> {
  @override
  TextDirection? to(String? value) => List<TextDirection?>.from(
    TextDirection.values,
  ).firstWhere((e) => e?.name == value, orElse: () => null);
}
