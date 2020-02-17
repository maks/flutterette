import 'package:json_annotation/json_annotation.dart';

part 'components.g.dart';

@JsonSerializable()
class Component {
  @JsonKey(required: true)
  final String type;

  const Component(this.type);

  factory Component.fromJson(Map<String, dynamic> json) {
    if (json is Map<String, dynamic> && json.containsKey('type')) {
      final String type = json['type'] as String;
      switch (type) {
        case 'label':
          return LabelComponent.fromJson(json);
        case 'image':
          return ImageComponent.fromJson(json);
        default:
          throw Exception('unknown type field:$type');
      }
    } else {
      throw Exception('missing WidgetType in type field');
    }
  }
}

@JsonSerializable()
class LabelComponent extends Component {
  final String text;

  const LabelComponent(String type, this.text) : super(type);

  factory LabelComponent.fromJson(Map<String, dynamic> json) =>
      _$LabelComponentFromJson(json);

  Map<String, dynamic> toJson() => _$LabelComponentToJson(this);
}

@JsonSerializable()
class ImageComponent extends Component {
  final String url;

  const ImageComponent(String type, this.url) : super(type);

  factory ImageComponent.fromJson(Map<String, dynamic> json) =>
      _$ImageComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ImageComponentToJson(this);
}
