import 'package:flutter/widgets.dart';
import 'package:json_to_widget/type_parser.dart';

class TypeTextBaseline extends TypeParser<TextBaseline> {
  @override
  TextBaseline? to(String? value) => List<TextBaseline?>.from(
    TextBaseline.values,
  ).firstWhere((e) => e?.name == value, orElse: () => null);
}
