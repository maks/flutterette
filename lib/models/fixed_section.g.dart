// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: implicit_dynamic_parameter
part of 'fixed_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FixedSection _$FixedSectionFromJson(Map<String, dynamic> json) {
  return FixedSection(
    json['dataSource'] == null
        ? null
        : DataSource.fromJson(json['dataSource'] as Map<String, dynamic>),
    json['component'] == null
        ? null
        : Component.fromJson(json['component'] as Map<String, dynamic>),
  );
}
