import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/data_source.dart';
import 'package:flutterette/models/list_section.dart';
import 'package:flutterette/models/standard_section.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'section.g.dart';

// need to do this otherwise the generated fromJson method tries to instantiate abstract class
// and need to generate the toJson even if not used as otherwise the code gen
// fails for classes that have ref to Section class.
@JsonSerializable(createFactory: false, createToJson: true)
abstract class Section implements WidgetType {
  final DataSource dataSource;
  final Component component;

  const Section(this.dataSource, this.component);

  factory Section.fromJson(Map<String, dynamic> json) {

    if (json['dataSource']['data'] != null) {
      return StandardSection.fromJson(json);
    } else if (json['dataSource']['listData'] != null) {
      return ListSection.fromJson(json);
    } else {
      throw Exception('invalid section, missing data or listData: ${json}');
    }
  }
}
