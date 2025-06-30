import 'package:flutter/material.dart';
import 'package:json_to_widget/type/type_color_from_color_scheme.dart';
import 'package:json_to_widget/type_parser.dart';

class TypeColor extends TypeParser<Color> {
  @override
  Color? to(String? value, {BuildContext? buildContext}) {
    if (value is String) {
      if (value.startsWith('#')) {
        value = value.substring(1);
        final int? hexColor = int.tryParse(value, radix: 16);
        if (hexColor != null) {
          return Color(hexColor);
        }
      }
      final Color? colorFromColorScheme = TypeColorFromColorScheme().to(
        value,
        buildContext: buildContext,
      );
      if (colorFromColorScheme != null) {
        return colorFromColorScheme;
      }
    }
    return null;
  }
}
