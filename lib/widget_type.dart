import 'package:flutter/foundation.dart';

part 'widget_type.freezed.dart';

@immutable
abstract class WidgetType with _$WidgetType {
  const factory WidgetType.page({Body body, Header header}) = Page;
  const factory WidgetType.body() = Body;
  const factory WidgetType.header({String title}) = Header;
}
