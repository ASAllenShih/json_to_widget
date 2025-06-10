import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/color.dart';
import 'package:json_to_widget/method/leading.dart';
import 'package:json_to_widget/method/title.dart';
import 'package:json_to_widget/method/type/double.dart';
import 'package:json_to_widget/method/type/widget.dart';
import 'package:json_to_widget/method/type/widget_list.dart';
import 'package:json_to_widget/widget_parser.dart';

class WidgetAppBar extends WidgetParser {
  @override
  String get name => 'AppBar';
  @override
  Widget parse(
    JsonToWidget jsonToWidget,
    Map<String, dynamic> data,
    BuildContext buildContext,
  ) {
    return AppBar(
      leading: methodLeading(jsonToWidget, data, buildContext),
      automaticallyImplyLeading: data['automaticallyImplyLeading'] ?? true,
      title: methodTitle(jsonToWidget, data, buildContext),
      actions: methodTypeWidgetList(
        jsonToWidget,
        data['actions'],
        buildContext,
      ),
      flexibleSpace: methodTypeWidget(
        jsonToWidget,
        data['flexibleSpace'],
        buildContext,
      ),
      bottom:
          methodTypeWidget(jsonToWidget, data['bottom'], buildContext)
              as PreferredSizeWidget?,
      elevation: methodTypeDouble(data['elevation']),
      scrolledUnderElevation: methodTypeDouble(data['scrolledUnderElevation']),
      backgroundColor: methodColor(
        data['backgroundColor'],
        buildContext: buildContext,
      ),
      centerTitle: data['centerTitle'],
    );
  }
}
