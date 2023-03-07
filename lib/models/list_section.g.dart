// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListSection _$ListSectionFromJson(Map<String, dynamic> json) => ListSection(
      DataSource.fromJson(json['dataSource'] as Map<String, dynamic>),
      json['component'] == null
          ? null
          : Component.fromJson(json['component'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListSectionToJson(ListSection instance) =>
    <String, dynamic>{
      'dataSource': instance.dataSource,
      'component': instance.component,
    };
