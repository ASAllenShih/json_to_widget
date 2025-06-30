import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/type/type_widget.dart';
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
      appBar: TypeWidget().to(jsonToWidget, data['appBar'], buildContext) as PreferredSizeWidget?,
      body: TypeWidget().to(jsonToWidget, data['body'], buildContext),
      floatingActionButton: TypeWidget().to(jsonToWidget, data['floatingActionButton'], buildContext),
      drawer: TypeWidget().to(jsonToWidget, data['drawer'], buildContext),
      endDrawer: TypeWidget().to(jsonToWidget, data['endDrawer'], buildContext),
    );
  }
}