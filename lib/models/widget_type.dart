import 'package:flutterette/models/section.dart';
import 'package:json_annotation/json_annotation.dart';

part 'widget_type.g.dart';

abstract class WidgetType {}

@JsonSerializable()
class Page implements WidgetType {
  final Body body;
  final Header header;

  const Page({
    this.body,
    this.header,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
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
