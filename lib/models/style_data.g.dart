// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: implicit_dynamic_parameter
part of 'style_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StyleData _$StyleDataFromJson(Map<String, dynamic> json) {
  return StyleData(
    json['color'] as String,
    json['font'] as String,
    json['width'] as String,
    json['height'] as String,
    json['padding'] == null
        ? null
        : PaddingData.fromJson(json['padding'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StyleDataToJson(StyleData instance) => <String, dynamic>{
      'color': instance.color,
      'font': instance.font,
      'width': instance.width,
      'height': instance.height,
      'padding': instance.padding,
    };

PaddingData _$PaddingDataFromJson(Map<String, dynamic> json) {
  return PaddingData(
    (json['left'] as num)?.toDouble(),
    (json['right'] as num)?.toDouble(),
    (json['top'] as num)?.toDouble(),
    (json['bottom'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$PaddingDataToJson(PaddingData instance) =>
    <String, dynamic>{
      'left': instance.left,
      'right': instance.right,
      'top': instance.top,
      'bottom': instance.bottom,
    };
