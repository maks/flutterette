import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/section.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fixed_section.g.dart';

@JsonSerializable()
class FixedSection implements Section {
  final List<Component> items;

  const FixedSection({this.items});

  factory FixedSection.fromJson(Map<String, dynamic> json) =>
      _$FixedSectionFromJson(json);

  Map<String, dynamic> toJson() => _$FixedSectionToJson(this);
}
