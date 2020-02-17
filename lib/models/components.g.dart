// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Component _$ComponentFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return Component(
    json['type'] as String,
  );
}

Map<String, dynamic> _$ComponentToJson(Component instance) => <String, dynamic>{
      'type': instance.type,
    };

LabelComponent _$LabelComponentFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return LabelComponent(
    json['type'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$LabelComponentToJson(LabelComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };

ImageComponent _$ImageComponentFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return ImageComponent(
    json['type'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$ImageComponentToJson(ImageComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };
