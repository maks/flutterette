import 'package:json_annotation/json_annotation.dart';

part 'style_data.g.dart';

@JsonSerializable()
class StyleData {
  StyleData();

  factory StyleData.fromJson(Map<String, dynamic> json) =>
      _$StyleDataFromJson(json);

  Map<String, dynamic> toJson() => _$StyleDataToJson(this);
}
