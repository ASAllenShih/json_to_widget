import 'package:flutter/widgets.dart';
import 'package:json_to_widget/type_parser.dart';

class TypeMainAxisAlignment extends TypeParser<MainAxisAlignment> {
  @override
  MainAxisAlignment? to(String? value) => List<MainAxisAlignment?>.from(
    MainAxisAlignment.values,
  ).firstWhere((e) => e?.name == value, orElse: () => null);
}
