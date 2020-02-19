// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: implicit_dynamic_parameter
part of 'fixed_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FixedSection _$FixedSectionFromJson(Map<String, dynamic> json) {
  return FixedSection(
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
