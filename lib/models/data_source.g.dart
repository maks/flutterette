// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataSource _$DataSourceFromJson(Map<String, dynamic> json) => DataSource(
      json['data'] as Map<String, dynamic>?,
      (json['listData'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$DataSourceToJson(DataSource instance) =>
    <String, dynamic>{
      'data': instance.data,
      'listData': instance.listData,
    };
