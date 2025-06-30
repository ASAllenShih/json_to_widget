import 'dart:ui';

import 'package:json_to_widget/type_parser.dart';

class TypeTextAlign extends TypeParser<TextAlign> {
  @override
  TextAlign? to(String? value) => List<TextAlign?>.from(
    TextAlign.values,
  ).firstWhere((e) => e?.name == value, orElse: () => null);
}
