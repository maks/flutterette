// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Head _$HeadFromJson(Map<String, dynamic> json) => Head(
      title: json['title'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      style: json['style'] == null
          ? null
          : StyleData.fromJson(json['style'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => HttpDataService.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HeadToJson(Head instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'style': instance.style,
      'services': instance.services,
    };
