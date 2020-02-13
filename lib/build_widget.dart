import 'package:flutter/material.dart';
import 'package:flutterette/widget_data.dart';
import 'package:flutterette/widget_type.dart';

Widget buildWidget(WidgetType widgetType, WidgetData data) {
  return widgetType.map(
    header: (_) => AppBar(),
    body: (_) => Container(
      child: Text('Body'),
    ),
  );
}
