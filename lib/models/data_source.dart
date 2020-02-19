import 'package:json_annotation/json_annotation.dart';

part 'data_source.g.dart';

@JsonSerializable()
class DataSource {
  final String url;

  const DataSource(this.url);

  factory DataSource.fromJson(Map<String, dynamic> json) =>
      _$DataSourceFromJson(json);
}
