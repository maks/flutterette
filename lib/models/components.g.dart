// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ComponentToJson(Component instance) => <String, dynamic>{
      'type': instance.type,
      'style': instance.style,
    };

LabelComponent _$LabelComponentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['type'],
  );
  return LabelComponent(
    json['type'] as String,
    json['style'] == null
        ? null
        : StyleData.fromJson(json['style'] as Map<String, dynamic>),
    json['text'] as String,
  );
}

Map<String, dynamic> _$LabelComponentToJson(LabelComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'style': instance.style,
      'text': instance.text,
    };

ImageComponent _$ImageComponentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['type'],
  );
  return ImageComponent(
    json['type'] as String,
    json['style'] == null
        ? null
        : StyleData.fromJson(json['style'] as Map<String, dynamic>),
    json['url'] as String,
  );
}

Map<String, dynamic> _$ImageComponentToJson(ImageComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'style': instance.style,
      'url': instance.url,
    };
