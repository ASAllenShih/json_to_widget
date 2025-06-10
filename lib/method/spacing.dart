import 'package:json_to_widget/method/type/double.dart';

double methodSpacing(Map<String, dynamic> data) {
  return methodTypeDouble(data['spacing']) ?? 0.0;
}
