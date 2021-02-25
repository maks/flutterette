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
    type: _$enumDecodeNullable(_$DataServiceTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$HttpDataServiceToJson(HttpDataService instance) =>
    <String, dynamic>{
      'name': instance.name,
      'host': instance.host,
      'path': instance.path,
      'type': _$DataServiceTypeEnumMap[instance.type],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

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
