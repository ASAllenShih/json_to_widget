import 'package:json_to_widget/json_to_widget.dart';

class TypeListener {
  void to(
    JsonToWidget jsonToWidget,
    String method,
    Map<String, dynamic> data, {
    dynamic forceValue,
  }) {
    dynamic listeners = data[method];
    if (listeners is Map) {
      final List<String> ids = listeners.keys.toList().cast<String>();
      for (final String id in ids) {
        final dynamic value = listeners[id];
        jsonToWidget.execListener(id, method, forceValue ?? value);
      }
    }
  }
}
