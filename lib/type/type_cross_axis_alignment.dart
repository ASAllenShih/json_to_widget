import 'package:flutter/widgets.dart';
import 'package:json_to_widget/type_parser.dart';

class TypeCrossAxisAlignment extends TypeParser<CrossAxisAlignment> {
  @override
  CrossAxisAlignment? to(String? value) => List<CrossAxisAlignment?>.from(
    CrossAxisAlignment.values,
  ).firstWhere((e) => e?.name == value, orElse: () => null);
}
