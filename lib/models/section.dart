import 'package:flutterette/models/section_type.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'section.g.dart';

@JsonSerializable()
class Section implements WidgetType {
  final List<SectionType> components;

  const Section({this.components});

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}
