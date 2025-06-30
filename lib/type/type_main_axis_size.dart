import 'package:flutter/widgets.dart';
import 'package:json_to_widget/type_parser.dart';

class TypeMainAxisSize extends TypeParser<MainAxisSize> {
  @override
  MainAxisSize? to(String? value) => List<MainAxisSize?>.from(
    MainAxisSize.values,
  ).firstWhere((e) => e?.name == value, orElse: () => null);
}
