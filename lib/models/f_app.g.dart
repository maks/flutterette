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
    services: (json['services'] as List)
        ?.map((e) =>
            e == null ? null : DataService.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FAppToJson(FApp instance) => <String, dynamic>{
      'head': instance.head?.toJson(),
      'screens': instance.screens?.map((e) => e?.toJson())?.toList(),
      'services': instance.services?.map((e) => e?.toJson())?.toList(),
    };
