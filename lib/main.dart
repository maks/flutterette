import 'package:flutter/material.dart';
import 'package:flutterette/build_widget.dart';
import 'package:flutterette/widget_type.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterette',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: buildWidget(
        WidgetType.body(),
        null,
      ),
    );
  }
}
