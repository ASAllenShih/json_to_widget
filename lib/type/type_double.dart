import 'package:json_to_widget/type_parser.dart';

class TypeDouble extends TypeParser<double> {
  @override
  double? to(String? value) {
    if (value == null) {
      return null;
    }
    return double.tryParse(value);
  }
}
