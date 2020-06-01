import 'package:flutterette/models/head.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'f_app.g.dart';

@JsonSerializable()
class FApp {
  final Head head;
  final List<Screen> pages;

  FApp({this.head, this.pages});

  Screen get firstPage =>
      (pages != null && pages.isNotEmpty) ? pages[0] : Screen();

  factory FApp.fromJson(Map<String, dynamic> json) => _$FAppFromJson(json);
}
