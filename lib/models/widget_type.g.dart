// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, unused_element

part of 'widget_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Screen _$_$ScreenFromJson(Map<String, dynamic> json) {
  return _$Screen(
    json['body'] == null
        ? null
        : Body.fromJson(json['body'] as Map<String, dynamic>),
    json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
  );
}

_$Body _$_$BodyFromJson(Map<String, dynamic> json) {
  return _$Body(
    json['sections'] as List,
  );
}

_$Header _$_$HeaderFromJson(Map<String, dynamic> json) {
  return _$Header(
    json['title'] as String,
  );
}

_$Section _$_$SectionFromJson(Map<String, dynamic> json) {
  return _$Section(
    json['dataSource'] == null
        ? null
        : DataSource.fromJson(json['dataSource'] as Map<String, dynamic>),
    json['component'] == null
        ? null
        : Component.fromJson(json['component'] as Map<String, dynamic>),
  );
}

_$StandardSection _$_$StandardSectionFromJson(Map<String, dynamic> json) {
  return _$StandardSection(
    json['dataSource'] == null
        ? null
        : DataSource.fromJson(json['dataSource'] as Map<String, dynamic>),
    json['component'] == null
        ? null
        : Component.fromJson(json['component'] as Map<String, dynamic>),
  );
}

_$ListSection _$_$ListSectionFromJson(Map<String, dynamic> json) {
  return _$ListSection(
    json['dataSource'] == null
        ? null
        : DataSource.fromJson(json['dataSource'] as Map<String, dynamic>),
    json['component'] == null
        ? null
        : Component.fromJson(json['component'] as Map<String, dynamic>),
  );
}
