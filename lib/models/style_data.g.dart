// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StyleData _$StyleDataFromJson(Map<String, dynamic> json) {
  return StyleData(
    json['color'] as String,
    json['font'] == null
        ? null
        : FontData.fromJson(json['font'] as Map<String, dynamic>),
    json['width'] as String,
    json['height'] as String,
    json['padding'] == null
        ? null
        : PaddingData.fromJson(json['padding'] as Map<String, dynamic>),
  );
}

PaddingData _$PaddingDataFromJson(Map<String, dynamic> json) {
  return PaddingData(
    (json['left'] as num)?.toDouble(),
    (json['right'] as num)?.toDouble(),
    (json['top'] as num)?.toDouble(),
    (json['bottom'] as num)?.toDouble(),
  );
}

FontData _$FontDataFromJson(Map<String, dynamic> json) {
  return FontData(
    (json['size'] as num)?.toDouble(),
    json['family'] as String,
    json['style'] as String,
  );
}
