// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_data_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpDataService _$HttpDataServiceFromJson(Map<String, dynamic> json) =>
    HttpDataService(
      name: json['name'] as String,
      host: json['host'] as String?,
      path: json['path'] as String?,
      type: $enumDecodeNullable(_$DataServiceTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$HttpDataServiceToJson(HttpDataService instance) =>
    <String, dynamic>{
      'name': instance.name,
      'host': instance.host,
      'path': instance.path,
      'type': _$DataServiceTypeEnumMap[instance.type]!,
    };

const _$DataServiceTypeEnumMap = {
  DataServiceType.Http: 'Http',
  DataServiceType.GraphQL: 'GraphQL',
  DataServiceType.Websocket: 'Websocket',
  DataServiceType.Map: 'Map',
  DataServiceType.List: 'List',
  DataServiceType.KVStore: 'KVStore',
  DataServiceType.Database: 'Database',
  DataServiceType.File: 'File',
  DataServiceType.Bluetooth: 'Bluetooth',
  DataServiceType.Location: 'Location',
  DataServiceType.Sensor: 'Sensor',
};
