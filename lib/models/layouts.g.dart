// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: implicit_dynamic_parameter
part of 'layouts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HorizontalLayoutComponent _$HorizontalLayoutComponentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return HorizontalLayoutComponent(
    json['type'] as String,
    (json['components'] as List)
        ?.map((e) =>
            e == null ? null : Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HorizontalLayoutComponentToJson(
        HorizontalLayoutComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'components': instance.components,
    };

VerticalLayoutComponent _$VerticalLayoutComponentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['type']);
  return VerticalLayoutComponent(
    json['type'] as String,
    (json['components'] as List)
        ?.map((e) =>
            e == null ? null : Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VerticalLayoutComponentToJson(
        VerticalLayoutComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'components': instance.components,
    };
