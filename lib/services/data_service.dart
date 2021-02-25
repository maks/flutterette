import 'package:flutter/foundation.dart';
import 'package:flutterette/services/http_data_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum DataServiceType {
  Http,
  GraphQL,
  Websocket,
  Map,
  List,
  KVStore,
  Database,
  File,
  Bluetooth,
  Location,
  Sensor
}

@JsonSerializable()
abstract class DataService {
  final String name = '';
  DataServiceType get type =>
      throw Exception('abstract DataService does not have a type');

  factory DataService.fromJson(Map<String, dynamic> json) {
    DataService r;
    switch (_fromName(json['type'] as String)) {
      case DataServiceType.Http:
        r = HttpDataService.fromJson(json);
        break;
      case DataServiceType.GraphQL:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.Websocket:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.Map:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.List:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.KVStore:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.Database:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.File:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.Bluetooth:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.Location:
        Exception('TODO: Handle this case');
        break;
      case DataServiceType.Sensor:
        Exception('TODO: Handle this case');
        break;
    }
    return r;
  }

  Map<String, dynamic> toJson();
}

DataServiceType _fromName(String name) =>
    DataServiceType.values.firstWhere((e) => e.name == name);

extension DataServiceTypeExtension on DataServiceType {
  String get name => describeEnum(this);
}
