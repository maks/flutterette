// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionType _$SectionTypeFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return SectionType(
    json['type'] as String,
  );
}

Map<String, dynamic> _$SectionTypeToJson(SectionType instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

SectionLabel _$SectionLabelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return SectionLabel(
    json['type'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$SectionLabelToJson(SectionLabel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };

SectionImage _$SectionImageFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return SectionImage(
    json['type'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$SectionImageToJson(SectionImage instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };
