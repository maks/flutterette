import 'package:flutterette/models/head.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:flutterette/services/data_service.dart';
import 'package:json_annotation/json_annotation.dart';

part 'f_app.g.dart';

enum FAppPart { Head, Services, Screens }

@JsonSerializable(explicitToJson: true)
class FApp {
  final Head head;
  final List<Screen> screens;
  final List<DataService> services;

  FApp({
    this.head,
    this.screens = const [],
    this.services = const [],
  });

  Screen get firstPage =>
      (screens != null && screens.isNotEmpty) ? screens[0] : Screen();

  factory FApp.fromJson(Map<String, dynamic> json) => _$FAppFromJson(json);

  Map<String, dynamic> toJson() => _$FAppToJson(this);
}
