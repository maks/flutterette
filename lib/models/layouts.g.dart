// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layouts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HorizontalLayoutComponent _$HorizontalLayoutComponentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['type'],
  );
  return HorizontalLayoutComponent(
    json['type'] as String,
    StyleData.fromJson(json['style'] as Map<String, dynamic>),
    (json['components'] as List<dynamic>)
        .map((e) => Component.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HorizontalLayoutComponentToJson(
        HorizontalLayoutComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'style': instance.style,
      'components': instance.components,
    };

VerticalLayoutComponent _$VerticalLayoutComponentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['type'],
  );
  return VerticalLayoutComponent(
    json['type'] as String,
    json['style'] == null
        ? null
        : StyleData.fromJson(json['style'] as Map<String, dynamic>),
    (json['components'] as List<dynamic>)
        .map((e) => Component.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$VerticalLayoutComponentToJson(
        VerticalLayoutComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'style': instance.style,
      'components': instance.components,
    };
