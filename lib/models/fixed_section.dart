import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/data_source.dart';
import 'package:flutterette/models/section.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fixed_section.g.dart';

@JsonSerializable()
class FixedSection extends Section {
  const FixedSection(DataSource dataSource, Component component)
      : super(dataSource, component);

  factory FixedSection.fromJson(Map<String, dynamic> json) =>
      _$FixedSectionFromJson(json);
}
