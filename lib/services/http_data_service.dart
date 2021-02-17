import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

import 'package:flutterette/models/data_source.dart';

part 'http_data_service.g.dart';

@JsonSerializable()
class HttpDataService {
  final String name;
  final String host;
  final String path;

  Uri get url => Uri.https(host, path);

  const HttpDataService({
    this.name,
    this.host,
    this.path,
  });

  factory HttpDataService.fromJson(Map<String, dynamic> json) =>
      _$HttpDataServiceFromJson(json);

  Future<DataSource> fetchData() async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return _dataSourceFromResponse(response);
    } else {
      throw Exception('Failed to load data: $url');
    }
  }

  DataSource _dataSourceFromResponse(http.Response response) {
    final ds =
        DataSource(jsonDecode(response.body) as Map<String, dynamic>, null);
    print('got from DS: ${ds.data}');
    return ds;
  }

  @override
  String toString() => '[$name]($url)';
}
