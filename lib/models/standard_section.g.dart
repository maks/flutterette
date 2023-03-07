// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandardSection _$StandardSectionFromJson(Map<String, dynamic> json) =>
    StandardSection(
      DataSource.fromJson(json['dataSource'] as Map<String, dynamic>),
      Component.fromJson(json['component'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StandardSectionToJson(StandardSection instance) =>
    <String, dynamic>{
      'dataSource': instance.dataSource,
      'component': instance.component,
    };
