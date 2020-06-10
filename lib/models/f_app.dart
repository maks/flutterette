import 'package:flutterette/models/head.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'f_app.g.dart';

@JsonSerializable()
class FApp {
  final Head head;
  final List<Screen> screens;

  FApp({this.head, this.screens});

  Screen get firstPage => (screens != null && screens.isNotEmpty)
      ? screens[0]
      : WidgetType.screen(null, null) as Screen;

  factory FApp.fromJson(Map<String, dynamic> json) => _$FAppFromJson(json);
}
