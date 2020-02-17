// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: implicit_dynamic_parameter
part of 'f_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FApp _$FAppFromJson(Map<String, dynamic> json) {
  return FApp(
    head: json['head'] == null
        ? null
        : Head.fromJson(json['head'] as Map<String, dynamic>),
    pages: (json['pages'] as List)
        ?.map(
            (e) => e == null ? null : Page.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FAppToJson(FApp instance) => <String, dynamic>{
      'head': instance.head,
      'pages': instance.pages,
    };
