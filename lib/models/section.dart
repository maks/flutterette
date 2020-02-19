import 'package:flutterette/models/fixed_section.dart';
import 'package:flutterette/models/list_section.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'section.g.dart';

// need to do this otherwise the generated fromJson method tries to instantiate abstract class
// and need to generate the toJson even if not used as otherwise the code gen
// fails for classes that have ref to Section class
@JsonSerializable(createFactory: false, createToJson: true)
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
