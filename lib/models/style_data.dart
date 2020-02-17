import 'package:json_annotation/json_annotation.dart';

part 'style_data.g.dart';

@JsonSerializable()
class StyleData {
  final String color;
  final FontData font;
  final String width;
  final String height;
  final PaddingData padding;

  StyleData(this.color, this.font, this.width, this.height, this.padding);

  factory StyleData.fromJson(Map<String, dynamic> json) =>
      _$StyleDataFromJson(json);

  Map<String, dynamic> toJson() => _$StyleDataToJson(this);
}

@JsonSerializable()
class PaddingData {
  final double left;
  final double right;
  final double top;
  final double bottom;

  const PaddingData(this.left, this.right, this.top, this.bottom);

  factory PaddingData.fromJson(Map<String, dynamic> json) =>
      _$PaddingDataFromJson(json);

  Map<String, dynamic> toJson() => _$PaddingDataToJson(this);
}

@JsonSerializable()
class FontData {
  final double size;
  final String family;
  final String style;

  bool get isItalic => (style == 'italic');

  const FontData(this.size, this.family, this.style);

  factory FontData.fromJson(Map<String, dynamic> json) =>
      _$FontDataFromJson(json);

  Map<String, dynamic> toJson() => _$FontDataToJson(this);
}
