import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/data_source.dart';
// import 'package:flutterette/models/section.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget_type.freezed.dart';
part 'widget_type.g.dart';

@freezed
abstract class WidgetType with _$WidgetType {
  const factory WidgetType.screen(
    Body body,
    Header header,
  ) = Screen;

  const factory WidgetType.body(List<Section> sections) = Body;

  const factory WidgetType.header(String title) = Header;

  const factory WidgetType.section(DataSource dataSource, Component component) =
      Section;

  const factory WidgetType.standardSection(
      DataSource dataSource, Component component) = StandardSection;

  const factory WidgetType.listSection(
      DataSource dataSource, Component component) = ListSection;

  factory WidgetType.fromJson(Map<String, dynamic> json) =>
      _$WidgetTypeFromJson(json);
}

// @freezed
// abstract class Screen with _$Screen {
//   factory Screen({
//     Body body,
//     Header header,
//   }) = _Screen;

//   factory Screen.fromJson(Map<String, dynamic> json) => _$ScreenFromJson(json);
// }

// @freezed
// abstract class Body with _$Body {
//   factory Body(List<Section> section) = _Body;

//   factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
// }

// @freezed
// abstract class Header with _$Header {
//   factory Header({String title}) = _Header;

//   factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
// }
