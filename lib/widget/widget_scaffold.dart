import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/type/widget.dart';
import 'package:json_to_widget/widget_parser.dart';

class WidgetScaffold extends WidgetParser {
  @override
  String get name => 'Scaffold';
  
  @override
  Widget parse(
    JsonToWidget jsonToWidget,
    Map<String, dynamic> data,
    BuildContext buildContext,
  ) {
    return Scaffold(
      appBar: methodTypeWidget(jsonToWidget, data['appBar'], buildContext) as PreferredSizeWidget?,
      body: methodTypeWidget(jsonToWidget, data['body'], buildContext),
      floatingActionButton: methodTypeWidget(jsonToWidget, data['floatingActionButton'], buildContext),
      drawer: methodTypeWidget(jsonToWidget, data['drawer'], buildContext),
      endDrawer: methodTypeWidget(jsonToWidget, data['endDrawer'], buildContext),
    );
  }
}