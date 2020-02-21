import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/style_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'layouts.g.dart';

@JsonSerializable()
class HorizontalLayoutComponent extends Component {
  final List<Component> components;
  const HorizontalLayoutComponent(String type, StyleData style, this.components)
      : super(type, style);

  factory HorizontalLayoutComponent.fromJson(Map<String, dynamic> json) =>
      _$HorizontalLayoutComponentFromJson(json);
}

@JsonSerializable()
class VerticalLayoutComponent extends Component {
  final List<Component> components;
  const VerticalLayoutComponent(String type, StyleData style, this.components)
      : super(type, style);

  factory VerticalLayoutComponent.fromJson(Map<String, dynamic> json) =>
      _$VerticalLayoutComponentFromJson(json);
}
