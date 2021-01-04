// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'f_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FApp _$_$_FAppFromJson(Map<String, dynamic> json) {
  return _$_FApp(
    head: json['head'] == null
        ? null
        : Head.fromJson(json['head'] as Map<String, dynamic>),
    pages: (json['pages'] as List)
        ?.map(
            (e) => e == null ? null : FPage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_FAppToJson(_$_FApp instance) => <String, dynamic>{
      'head': instance.head,
      'pages': instance.pages,
    };
