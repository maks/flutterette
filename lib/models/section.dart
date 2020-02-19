import 'package:flutterette/models/fixed_section.dart';
import 'package:flutterette/models/list_section.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'section.g.dart';

@JsonSerializable(createFactory: false)
abstract class Section implements WidgetType {
  const Section();

  factory Section.fromJson(Map<String, dynamic> json) {
    if (json != null && json['items'] != null) {
      return FixedSection.fromJson(json);
    } else {
      return ListSection.fromJson(json);
    }
  }
}
