// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, unused_element

part of 'components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabelComponent _$LabelComponentFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return LabelComponent(
    json['type'] as String,
    json['style'] == null
        ? null
        : StyleData.fromJson(json['style'] as Map<String, dynamic>),
    json['text'] as String,
  );
}

ImageComponent _$ImageComponentFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return ImageComponent(
    json['type'] as String,
    json['style'] == null
        ? null
        : StyleData.fromJson(json['style'] as Map<String, dynamic>),
    json['url'] as String,
  );
}
