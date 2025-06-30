import 'package:json_to_widget/type/type_double.dart';

double methodSpacing(Map<String, dynamic> data) {
  return TypeDouble().to(data['spacing']) ?? 0.0;
}
