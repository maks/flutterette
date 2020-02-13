import 'package:flutter/material.dart';
import 'package:flutterette/widget_data.dart';
import 'package:flutterette/widget_type.dart';

Widget buildWidget(WidgetType widgetType, WidgetData data) {
  return widgetType.map(
    header: (h) => AppBar(
      title: Text(h.title),
    ),
    body: (_) => Container(
      child: Text('Body'),
    ),
    page: (p) => Scaffold(
      body: buildWidget(p.body, null),
      appBar: buildWidget(p.header, null),
    ),
  );
}
