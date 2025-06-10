import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:json_to_widget/event_listener.dart';
import 'package:json_to_widget/widget/widget_app_bar.dart';
import 'package:json_to_widget/widget/widget_center.dart';
import 'package:json_to_widget/widget/widget_column.dart';
import 'package:json_to_widget/widget/widget_elevated_button.dart';
import 'package:json_to_widget/widget/widget_floating_action_button.dart';
import 'package:json_to_widget/widget/widget_scaffold.dart';
import 'package:json_to_widget/widget/widget_single_child_scroll_view.dart';
import 'package:json_to_widget/widget/widget_text.dart';
import 'package:json_to_widget/widget_parser.dart';

class JsonToWidget {
  final Map<String, WidgetParser> _widgets = {};
  final Map<String, EventListener> _listeners = {};
  JsonToWidget({final bool loadDefaultWidgets = true}) {
    if (loadDefaultWidgets) {
      addWidget(WidgetAppBar());
      addWidget(WidgetCenter());
      addWidget(WidgetColumn());
      addWidget(WidgetElevatedButton());
      addWidget(WidgetFloatingActionButton());
      addWidget(WidgetScaffold());
      addWidget(WidgetSingleChildScrollView());
      addWidget(WidgetText());
    }
  }
  void addWidget(WidgetParser widgetParser) {
    _widgets[widgetParser.name] = widgetParser;
  }

  void addListener(EventListener listener) {
    _listeners[listener.id] = listener;
  }

  Widget? buildFromJson(String? json, BuildContext buildContext) {
    if (json == null || json.isEmpty) {
      return null;
    }
    try {
      final dynamic jsonData = JsonDecoder().convert(json);
      final Map<String, dynamic> data = Map<String, dynamic>.from(jsonData);
      return buildFromMap(data, buildContext);
    } catch (e) {
      if (kDebugMode) {
        print('無法載入介面：$e');
      }
      return Icon(Icons.error);
    }
  }

  Widget? buildFromMap(
    Map<String, dynamic>? data,
    BuildContext buildContext, {
    JsonToWidget? jsonToWidget,
  }) {
    try {
      if (data == null) {
        return null;
      }
      final String? widgetType = data['type'];
      if (widgetType == null) {
        return null;
      }
      final WidgetParser? widgetParser = _widgets[widgetType];
      if (widgetParser == null) {
        throw Exception('無法找到可用的介面解析器($widgetType)');
      }
      return widgetParser.parse(jsonToWidget ?? this, data, buildContext);
    } catch (e) {
      if (kDebugMode) {
        print('無法載入介面：$e');
        rethrow;
      }
      return Icon(Icons.error);
    }
  }

  void execListener(String id, String method, dynamic data) {
    final EventListener? listener = _listeners[id];
    if (listener == null) {
      return;
    }
    final Function? func = listener.methods[method];
    if (func != null) {
      func(data);
    }
  }
}
