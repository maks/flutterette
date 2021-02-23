import 'package:flutter/foundation.dart';

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

abstract class DataService {
  DataServiceType get type =>
      throw Exception('abstract DataService does not have a type');
}

extension DataServiceTypeExtension on DataServiceType {
  String get name => describeEnum(this);
}
