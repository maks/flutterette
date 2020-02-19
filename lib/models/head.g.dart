// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Head _$HeadFromJson(Map<String, dynamic> json) {
  return Head(
    title: json['title'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
    style: json['style'] == null
        ? null
        : StyleData.fromJson(json['style'] as Map<String, dynamic>),
  );
}
