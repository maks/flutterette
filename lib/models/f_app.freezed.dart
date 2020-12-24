// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'f_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FApp _$FAppFromJson(Map<String, dynamic> json) {
  return _FApp.fromJson(json);
}

/// @nodoc
class _$FAppTearOff {
  const _$FAppTearOff();

// ignore: unused_element
  _FApp call({Head head, List<FPage> pages}) {
    return _FApp(
      head: head,
      pages: pages,
    );
  }

// ignore: unused_element
  FApp fromJson(Map<String, Object> json) {
    return FApp.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FApp = _$FAppTearOff();

/// @nodoc
mixin _$FApp {
  Head get head;
  List<FPage> get pages;

  Map<String, dynamic> toJson();
  $FAppCopyWith<FApp> get copyWith;
}

/// @nodoc
abstract class $FAppCopyWith<$Res> {
  factory $FAppCopyWith(FApp value, $Res Function(FApp) then) =
      _$FAppCopyWithImpl<$Res>;
  $Res call({Head head, List<FPage> pages});
}

/// @nodoc
class _$FAppCopyWithImpl<$Res> implements $FAppCopyWith<$Res> {
  _$FAppCopyWithImpl(this._value, this._then);

  final FApp _value;
  // ignore: unused_field
  final $Res Function(FApp) _then;

  @override
  $Res call({
    Object head = freezed,
    Object pages = freezed,
  }) {
    return _then(_value.copyWith(
      head: head == freezed ? _value.head : head as Head,
      pages: pages == freezed ? _value.pages : pages as List<FPage>,
    ));
  }
}

/// @nodoc
abstract class _$FAppCopyWith<$Res> implements $FAppCopyWith<$Res> {
  factory _$FAppCopyWith(_FApp value, $Res Function(_FApp) then) =
      __$FAppCopyWithImpl<$Res>;
  @override
  $Res call({Head head, List<FPage> pages});
}

/// @nodoc
class __$FAppCopyWithImpl<$Res> extends _$FAppCopyWithImpl<$Res>
    implements _$FAppCopyWith<$Res> {
  __$FAppCopyWithImpl(_FApp _value, $Res Function(_FApp) _then)
      : super(_value, (v) => _then(v as _FApp));

  @override
  _FApp get _value => super._value as _FApp;

  @override
  $Res call({
    Object head = freezed,
    Object pages = freezed,
  }) {
    return _then(_FApp(
      head: head == freezed ? _value.head : head as Head,
      pages: pages == freezed ? _value.pages : pages as List<FPage>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FApp extends _FApp {
  _$_FApp({this.head, this.pages}) : super._();

  factory _$_FApp.fromJson(Map<String, dynamic> json) =>
      _$_$_FAppFromJson(json);

  @override
  final Head head;
  @override
  final List<FPage> pages;

  @override
  String toString() {
    return 'FApp(head: $head, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FApp &&
            (identical(other.head, head) ||
                const DeepCollectionEquality().equals(other.head, head)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(head) ^
      const DeepCollectionEquality().hash(pages);

  @override
  _$FAppCopyWith<_FApp> get copyWith =>
      __$FAppCopyWithImpl<_FApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FAppToJson(this);
  }
}

abstract class _FApp extends FApp {
  _FApp._() : super._();
  factory _FApp({Head head, List<FPage> pages}) = _$_FApp;

  factory _FApp.fromJson(Map<String, dynamic> json) = _$_FApp.fromJson;

  @override
  Head get head;
  @override
  List<FPage> get pages;
  @override
  _$FAppCopyWith<_FApp> get copyWith;
}
