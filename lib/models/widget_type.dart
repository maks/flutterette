import 'package:flutterette/models/section.dart';
import 'package:json_annotation/json_annotation.dart';

part 'widget_type.g.dart';

abstract class WidgetType {}

@JsonSerializable()
class Screen implements WidgetType {
  final Body body;
  final Header header;

  const Screen({
    this.body,
    this.header,
  });

  factory Screen.fromJson(Map<String, dynamic> json) => _$ScreenFromJson(json);

  Map<String, dynamic> toJson() => _$ScreenToJson(this);
}

@JsonSerializable()
class Body implements WidgetType {
  final List<Section> sections;
  const Body(this.sections);

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@JsonSerializable()
class Header implements WidgetType {
  final String title;

  const Header({this.title});

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}
