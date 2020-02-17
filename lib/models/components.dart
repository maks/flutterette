import 'package:flutterette/models/layouts.dart';
import 'package:flutterette/models/style_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'components.g.dart';

@JsonSerializable()
class Component {
  @JsonKey(required: true)
  final String type;
  final StyleData style;

  const Component(this.type, this.style);

  factory Component.fromJson(Map<String, dynamic> json) {
    if (json is Map<String, dynamic> && json.containsKey('type')) {
      final String type = json['type'] as String;
      switch (type) {
        case 'label':
          return LabelComponent.fromJson(json);
        case 'image':
          return ImageComponent.fromJson(json);
        case 'horizontal':
          return HorizontalLayoutComponent.fromJson(json);
        case 'vertical':
          return VerticalLayoutComponent.fromJson(json);
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

  const LabelComponent(String type, StyleData style, this.text)
      : super(type, style);

  factory LabelComponent.fromJson(Map<String, dynamic> json) =>
      _$LabelComponentFromJson(json);

  Map<String, dynamic> toJson() => _$LabelComponentToJson(this);
}

@JsonSerializable()
class ImageComponent extends Component {
  final String url;

  const ImageComponent(String type, StyleData style, this.url)
      : super(type, style);

  factory ImageComponent.fromJson(Map<String, dynamic> json) =>
      _$ImageComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ImageComponentToJson(this);
}
