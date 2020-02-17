// GENERATED CODE - DO NOT MODIFY BY HAND

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
    (json['padding'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$StyleDataToJson(StyleData instance) => <String, dynamic>{
      'color': instance.color,
      'font': instance.font,
      'width': instance.width,
      'height': instance.height,
      'padding': instance.padding,
    };
