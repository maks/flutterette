// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Component _$ComponentFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return Component(
    json['type'] as String,
    json['style'] == null
        ? null
        : StyleData.fromJson(json['style'] as Map<String, dynamic>),
  );
}

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
