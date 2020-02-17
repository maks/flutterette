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
          return Label.fromJson(json);
        default:
          throw Exception('unknown type field:$type');
      }
    } else {
      throw Exception('missing WidgetType in type field');
    }
  }
}

@JsonSerializable()
class Label extends SectionType {
  final String text;

  const Label(String type, this.text) : super(type);

  factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);

  Map<String, dynamic> toJson() => _$LabelToJson(this);
}
