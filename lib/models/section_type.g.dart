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

Label _$LabelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return Label(
    json['type'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$LabelToJson(Label instance) => <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };
