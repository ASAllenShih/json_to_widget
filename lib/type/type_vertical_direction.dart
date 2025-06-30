import 'package:flutter/widgets.dart';
import 'package:json_to_widget/type_parser.dart';

class TypeVerticalDirection extends TypeParser<VerticalDirection> {
  @override
  VerticalDirection? to(String? value) => List<VerticalDirection?>.from(
    VerticalDirection.values,
  ).firstWhere((e) => e?.name == value, orElse: () => null);
}
