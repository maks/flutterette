import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/data_source.dart';
import 'package:flutterette/models/section.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_section.g.dart';

@JsonSerializable()
class ListSection implements Section {
  final DataSource dataSource;
  final Component template;

  const ListSection(this.dataSource, this.template);

  factory ListSection.fromJson(Map<String, dynamic> json) =>
      _$ListSectionFromJson(json);

  Map<String, dynamic> toJson() => _$ListSectionToJson(this);
}
