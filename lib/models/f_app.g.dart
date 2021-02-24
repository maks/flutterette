// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'f_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FApp _$FAppFromJson(Map<String, dynamic> json) {
  return FApp(
    head: json['head'] == null
        ? null
        : Head.fromJson(json['head'] as Map<String, dynamic>),
    screens: (json['screens'] as List)
        ?.map((e) =>
            e == null ? null : Screen.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FAppToJson(FApp instance) => <String, dynamic>{
      'head': instance.head,
      'screens': instance.screens,
    };
