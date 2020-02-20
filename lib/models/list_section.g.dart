// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListSection _$ListSectionFromJson(Map<String, dynamic> json) {
  return ListSection(
    json['dataSource'] == null
        ? null
        : DataSource.fromJson(json['dataSource'] as Map<String, dynamic>),
    json['component'] == null
        ? null
        : Component.fromJson(json['component'] as Map<String, dynamic>),
  );
}
