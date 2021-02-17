// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_data_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpDataService _$HttpDataServiceFromJson(Map<String, dynamic> json) {
  return HttpDataService(
    name: json['name'] as String,
    host: json['host'] as String,
    path: json['path'] as String,
  );
}

Map<String, dynamic> _$HttpDataServiceToJson(HttpDataService instance) =>
    <String, dynamic>{
      'name': instance.name,
      'host': instance.host,
      'path': instance.path,
    };
