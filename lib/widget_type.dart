import 'package:flutter/foundation.dart';

part 'widget_type.freezed.dart';

@immutable
abstract class WidgetType with _$WidgetType {
  const factory WidgetType.header() = Header;
  const factory WidgetType.body() = Body;
}
