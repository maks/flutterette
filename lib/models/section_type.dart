import 'package:json_annotation/json_annotation.dart';

part 'section_type.g.dart';

@JsonSerializable()
class SectionType {
  @JsonKey(required: true)
  final String type;

  const SectionType(this.type);

  factory SectionType.fromJson(Map<String, dynamic> json) {
    if (json is Map<String, dynamic> && json.containsKey('type')) {
      final String type = json['type'] as String;
      switch (type) {
        case 'label':
          return SectionLabel.fromJson(json);
        case 'image':
          return SectionImage.fromJson(json);
        default:
          throw Exception('unknown type field:$type');
      }
    } else {
      throw Exception('missing WidgetType in type field');
    }
  }
}

@JsonSerializable()
class SectionLabel extends SectionType {
  final String text;

  const SectionLabel(String type, this.text) : super(type);

  factory SectionLabel.fromJson(Map<String, dynamic> json) =>
      _$SectionLabelFromJson(json);

  Map<String, dynamic> toJson() => _$SectionLabelToJson(this);
}

@JsonSerializable()
class SectionImage extends SectionType {
  final String url;

  const SectionImage(String type, this.url) : super(type);

  factory SectionImage.fromJson(Map<String, dynamic> json) =>
      _$SectionImageFromJson(json);

  Map<String, dynamic> toJson() => _$SectionImageToJson(this);
}
