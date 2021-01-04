import 'package:flutterette/models/head.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'f_app.freezed.dart';
part 'f_app.g.dart';

@freezed
abstract class FApp implements _$FApp {
  const FApp._();
  factory FApp({Head head, List<FPage> pages}) = _FApp;

  FPage get firstPage =>
      (pages != null && pages.isNotEmpty) ? pages[0] : FPage();

  factory FApp.fromJson(Map<String, dynamic> json) => _$FAppFromJson(json);
}
