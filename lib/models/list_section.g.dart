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
    json['template'] == null
        ? null
        : Component.fromJson(json['template'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListSectionToJson(ListSection instance) =>
    <String, dynamic>{
      'dataSource': instance.dataSource,
      'template': instance.template,
    };
