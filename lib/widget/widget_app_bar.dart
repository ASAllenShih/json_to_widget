import 'package:flutter/material.dart';
import 'package:json_to_widget/json_to_widget.dart';
import 'package:json_to_widget/method/leading.dart';
import 'package:json_to_widget/method/title.dart';
import 'package:json_to_widget/type/type_color.dart';
import 'package:json_to_widget/type/type_double.dart';
import 'package:json_to_widget/type/type_widget.dart';
import 'package:json_to_widget/type/type_widget_list.dart';
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
      actions: TypeWidgetList().to(jsonToWidget, data['actions'], buildContext),
      flexibleSpace: TypeWidget().to(
        jsonToWidget,
        data['flexibleSpace'],
        buildContext,
      ),
      bottom:
          TypeWidget().to(jsonToWidget, data['bottom'], buildContext)
              as PreferredSizeWidget?,
      elevation: TypeDouble().to(data['elevation']),
      scrolledUnderElevation: TypeDouble().to(data['scrolledUnderElevation']),
      backgroundColor: TypeColor().to(
        data['backgroundColor'],
        buildContext: buildContext,
      ),
      centerTitle: data['centerTitle'],
    );
  }
}
