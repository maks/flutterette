import 'package:flutterette/models/style_data.dart';
import 'package:flutterette/services/http_data_service.dart';
import 'package:json_annotation/json_annotation.dart';

part 'head.g.dart';

@JsonSerializable()
class Head {
  final String title;
  final String description;
  final String icon;
  final StyleData style;
  final List<HttpDataService> services;

  Head({
    this.title,
    this.description,
    this.icon,
    this.style,
    this.services,
  });

  factory Head.fromJson(Map<String, dynamic> json) => _$HeadFromJson(json);
}
