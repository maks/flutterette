import 'package:json_annotation/json_annotation.dart';

part 'data_source.g.dart';

@JsonSerializable()
class DataSource {
  final Map<String, dynamic> data;
  final List<Map<String, dynamic>> listData;

  const DataSource(this.data, this.listData);

  factory DataSource.fromJson(Map<String, dynamic> json) =>
      _$DataSourceFromJson(json);
}
