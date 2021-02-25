import 'package:flutter/foundation.dart';
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
    //TODO: instead we need to have switch statement to instantiate for each subclass
    throw Exception('Abstract Data Service cannot be instantiated');
  }

  Map<String, dynamic> toJson();
}

extension DataServiceTypeExtension on DataServiceType {
  String get name => describeEnum(this);
}
