// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FPage _$FPageFromJson(Map<String, dynamic> json) {
  return FPage(
    body: json['body'] == null
        ? null
        : Body.fromJson(json['body'] as Map<String, dynamic>),
    header: json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
  );
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return Body(
    (json['sections'] as List)
        ?.map((e) =>
            e == null ? null : Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return Header(
    title: json['title'] as String,
  );
}
