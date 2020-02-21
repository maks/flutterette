import 'package:flutterette/models/style_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'head.g.dart';

@JsonSerializable()
class Head {
  final String title;
  final String description;
  final String icon;
  final StyleData style;

  Head({this.title, this.description, this.icon, this.style});

  factory Head.fromJson(Map<String, dynamic> json) => _$HeadFromJson(json);
}
