// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandardSection _$StandardSectionFromJson(Map<String, dynamic> json) {
  return StandardSection(
    json['dataSource'] == null
        ? null
        : DataSource.fromJson(json['dataSource'] as Map<String, dynamic>),
    json['component'] == null
        ? null
        : Component.fromJson(json['component'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StandardSectionToJson(StandardSection instance) =>
    <String, dynamic>{
      'dataSource': instance.dataSource,
      'component': instance.component,
    };
