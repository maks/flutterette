import 'package:json_annotation/json_annotation.dart';

part 'style_data.g.dart';

@JsonSerializable()
class StyleData {
  final String color;
  final String font;
  final String width;
  final String height;
  final double padding;

  StyleData(this.color, this.font, this.width, this.height, this.padding);

  factory StyleData.fromJson(Map<String, dynamic> json) =>
      _$StyleDataFromJson(json);

  Map<String, dynamic> toJson() => _$StyleDataToJson(this);
}
