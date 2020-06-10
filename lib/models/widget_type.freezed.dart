// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'widget_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WidgetType _$WidgetTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'screen':
      return Screen.fromJson(json);
    case 'body':
      return Body.fromJson(json);
    case 'header':
      return Header.fromJson(json);
    case 'section':
      return Section.fromJson(json);
    case 'standardSection':
      return StandardSection.fromJson(json);
    case 'listSection':
      return ListSection.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$WidgetTypeTearOff {
  const _$WidgetTypeTearOff();

  Screen screen(Body body, Header header) {
    return Screen(
      body,
      header,
    );
  }

  Body body(List<dynamic> sections) {
    return Body(
      sections,
    );
  }

  Header header(String title) {
    return Header(
      title,
    );
  }

  Section section(DataSource dataSource, Component component) {
    return Section(
      dataSource,
      component,
    );
  }

  StandardSection standardSection(DataSource dataSource, Component component) {
    return StandardSection(
      dataSource,
      component,
    );
  }

  ListSection listSection(DataSource dataSource, Component component) {
    return ListSection(
      dataSource,
      component,
    );
  }
}

// ignore: unused_element
const $WidgetType = _$WidgetTypeTearOff();

mixin _$WidgetType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result screen(Body body, Header header),
    @required Result body(List<dynamic> sections),
    @required Result header(String title),
    @required Result section(DataSource dataSource, Component component),
    @required
        Result standardSection(DataSource dataSource, Component component),
    @required Result listSection(DataSource dataSource, Component component),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result screen(Body body, Header header),
    Result body(List<dynamic> sections),
    Result header(String title),
    Result section(DataSource dataSource, Component component),
    Result standardSection(DataSource dataSource, Component component),
    Result listSection(DataSource dataSource, Component component),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result screen(Screen value),
    @required Result body(Body value),
    @required Result header(Header value),
    @required Result section(Section value),
    @required Result standardSection(StandardSection value),
    @required Result listSection(ListSection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result screen(Screen value),
    Result body(Body value),
    Result header(Header value),
    Result section(Section value),
    Result standardSection(StandardSection value),
    Result listSection(ListSection value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $WidgetTypeCopyWith<$Res> {
  factory $WidgetTypeCopyWith(
          WidgetType value, $Res Function(WidgetType) then) =
      _$WidgetTypeCopyWithImpl<$Res>;
}

class _$WidgetTypeCopyWithImpl<$Res> implements $WidgetTypeCopyWith<$Res> {
  _$WidgetTypeCopyWithImpl(this._value, this._then);

  final WidgetType _value;
  // ignore: unused_field
  final $Res Function(WidgetType) _then;
}

abstract class $ScreenCopyWith<$Res> {
  factory $ScreenCopyWith(Screen value, $Res Function(Screen) then) =
      _$ScreenCopyWithImpl<$Res>;
  $Res call({Body body, Header header});
}

class _$ScreenCopyWithImpl<$Res> extends _$WidgetTypeCopyWithImpl<$Res>
    implements $ScreenCopyWith<$Res> {
  _$ScreenCopyWithImpl(Screen _value, $Res Function(Screen) _then)
      : super(_value, (v) => _then(v as Screen));

  @override
  Screen get _value => super._value as Screen;

  @override
  $Res call({
    Object body = freezed,
    Object header = freezed,
  }) {
    return _then(Screen(
      body == freezed ? _value.body : body as Body,
      header == freezed ? _value.header : header as Header,
    ));
  }
}

@JsonSerializable()
class _$Screen implements Screen {
  const _$Screen(this.body, this.header)
      : assert(body != null),
        assert(header != null);

  factory _$Screen.fromJson(Map<String, dynamic> json) =>
      _$_$ScreenFromJson(json);

  @override
  final Body body;
  @override
  final Header header;

  @override
  String toString() {
    return 'WidgetType.screen(body: $body, header: $header)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Screen &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.header, header) ||
                const DeepCollectionEquality().equals(other.header, header)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(header);

  @override
  $ScreenCopyWith<Screen> get copyWith =>
      _$ScreenCopyWithImpl<Screen>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result screen(Body body, Header header),
    @required Result body(List<dynamic> sections),
    @required Result header(String title),
    @required Result section(DataSource dataSource, Component component),
    @required
        Result standardSection(DataSource dataSource, Component component),
    @required Result listSection(DataSource dataSource, Component component),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return screen(this.body, this.header);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result screen(Body body, Header header),
    Result body(List<dynamic> sections),
    Result header(String title),
    Result section(DataSource dataSource, Component component),
    Result standardSection(DataSource dataSource, Component component),
    Result listSection(DataSource dataSource, Component component),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (screen != null) {
      return screen(this.body, this.header);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result screen(Screen value),
    @required Result body(Body value),
    @required Result header(Header value),
    @required Result section(Section value),
    @required Result standardSection(StandardSection value),
    @required Result listSection(ListSection value),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return screen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result screen(Screen value),
    Result body(Body value),
    Result header(Header value),
    Result section(Section value),
    Result standardSection(StandardSection value),
    Result listSection(ListSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (screen != null) {
      return screen(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ScreenToJson(this)..['runtimeType'] = 'screen';
  }
}

abstract class Screen implements WidgetType {
  const factory Screen(Body body, Header header) = _$Screen;

  factory Screen.fromJson(Map<String, dynamic> json) = _$Screen.fromJson;

  Body get body;
  Header get header;
  $ScreenCopyWith<Screen> get copyWith;
}

abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res>;
  $Res call({List<dynamic> sections});
}

class _$BodyCopyWithImpl<$Res> extends _$WidgetTypeCopyWithImpl<$Res>
    implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(Body _value, $Res Function(Body) _then)
      : super(_value, (v) => _then(v as Body));

  @override
  Body get _value => super._value as Body;

  @override
  $Res call({
    Object sections = freezed,
  }) {
    return _then(Body(
      sections == freezed ? _value.sections : sections as List<dynamic>,
    ));
  }
}

@JsonSerializable()
class _$Body implements Body {
  const _$Body(this.sections) : assert(sections != null);

  factory _$Body.fromJson(Map<String, dynamic> json) => _$_$BodyFromJson(json);

  @override
  final List<dynamic> sections;

  @override
  String toString() {
    return 'WidgetType.body(sections: $sections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Body &&
            (identical(other.sections, sections) ||
                const DeepCollectionEquality()
                    .equals(other.sections, sections)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sections);

  @override
  $BodyCopyWith<Body> get copyWith =>
      _$BodyCopyWithImpl<Body>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result screen(Body body, Header header),
    @required Result body(List<dynamic> sections),
    @required Result header(String title),
    @required Result section(DataSource dataSource, Component component),
    @required
        Result standardSection(DataSource dataSource, Component component),
    @required Result listSection(DataSource dataSource, Component component),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return body(sections);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result screen(Body body, Header header),
    Result body(List<dynamic> sections),
    Result header(String title),
    Result section(DataSource dataSource, Component component),
    Result standardSection(DataSource dataSource, Component component),
    Result listSection(DataSource dataSource, Component component),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (body != null) {
      return body(sections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result screen(Screen value),
    @required Result body(Body value),
    @required Result header(Header value),
    @required Result section(Section value),
    @required Result standardSection(StandardSection value),
    @required Result listSection(ListSection value),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return body(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result screen(Screen value),
    Result body(Body value),
    Result header(Header value),
    Result section(Section value),
    Result standardSection(StandardSection value),
    Result listSection(ListSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (body != null) {
      return body(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BodyToJson(this)..['runtimeType'] = 'body';
  }
}

abstract class Body implements WidgetType {
  const factory Body(List<dynamic> sections) = _$Body;

  factory Body.fromJson(Map<String, dynamic> json) = _$Body.fromJson;

  List<dynamic> get sections;
  $BodyCopyWith<Body> get copyWith;
}

abstract class $HeaderCopyWith<$Res> {
  factory $HeaderCopyWith(Header value, $Res Function(Header) then) =
      _$HeaderCopyWithImpl<$Res>;
  $Res call({String title});
}

class _$HeaderCopyWithImpl<$Res> extends _$WidgetTypeCopyWithImpl<$Res>
    implements $HeaderCopyWith<$Res> {
  _$HeaderCopyWithImpl(Header _value, $Res Function(Header) _then)
      : super(_value, (v) => _then(v as Header));

  @override
  Header get _value => super._value as Header;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(Header(
      title == freezed ? _value.title : title as String,
    ));
  }
}

@JsonSerializable()
class _$Header implements Header {
  const _$Header(this.title) : assert(title != null);

  factory _$Header.fromJson(Map<String, dynamic> json) =>
      _$_$HeaderFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'WidgetType.header(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Header &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  $HeaderCopyWith<Header> get copyWith =>
      _$HeaderCopyWithImpl<Header>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result screen(Body body, Header header),
    @required Result body(List<dynamic> sections),
    @required Result header(String title),
    @required Result section(DataSource dataSource, Component component),
    @required
        Result standardSection(DataSource dataSource, Component component),
    @required Result listSection(DataSource dataSource, Component component),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return header(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result screen(Body body, Header header),
    Result body(List<dynamic> sections),
    Result header(String title),
    Result section(DataSource dataSource, Component component),
    Result standardSection(DataSource dataSource, Component component),
    Result listSection(DataSource dataSource, Component component),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (header != null) {
      return header(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result screen(Screen value),
    @required Result body(Body value),
    @required Result header(Header value),
    @required Result section(Section value),
    @required Result standardSection(StandardSection value),
    @required Result listSection(ListSection value),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return header(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result screen(Screen value),
    Result body(Body value),
    Result header(Header value),
    Result section(Section value),
    Result standardSection(StandardSection value),
    Result listSection(ListSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (header != null) {
      return header(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$HeaderToJson(this)..['runtimeType'] = 'header';
  }
}

abstract class Header implements WidgetType {
  const factory Header(String title) = _$Header;

  factory Header.fromJson(Map<String, dynamic> json) = _$Header.fromJson;

  String get title;
  $HeaderCopyWith<Header> get copyWith;
}

abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res>;
  $Res call({DataSource dataSource, Component component});
}

class _$SectionCopyWithImpl<$Res> extends _$WidgetTypeCopyWithImpl<$Res>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(Section _value, $Res Function(Section) _then)
      : super(_value, (v) => _then(v as Section));

  @override
  Section get _value => super._value as Section;

  @override
  $Res call({
    Object dataSource = freezed,
    Object component = freezed,
  }) {
    return _then(Section(
      dataSource == freezed ? _value.dataSource : dataSource as DataSource,
      component == freezed ? _value.component : component as Component,
    ));
  }
}

@JsonSerializable()
class _$Section implements Section {
  const _$Section(this.dataSource, this.component)
      : assert(dataSource != null),
        assert(component != null);

  factory _$Section.fromJson(Map<String, dynamic> json) =>
      _$_$SectionFromJson(json);

  @override
  final DataSource dataSource;
  @override
  final Component component;

  @override
  String toString() {
    return 'WidgetType.section(dataSource: $dataSource, component: $component)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Section &&
            (identical(other.dataSource, dataSource) ||
                const DeepCollectionEquality()
                    .equals(other.dataSource, dataSource)) &&
            (identical(other.component, component) ||
                const DeepCollectionEquality()
                    .equals(other.component, component)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dataSource) ^
      const DeepCollectionEquality().hash(component);

  @override
  $SectionCopyWith<Section> get copyWith =>
      _$SectionCopyWithImpl<Section>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result screen(Body body, Header header),
    @required Result body(List<dynamic> sections),
    @required Result header(String title),
    @required Result section(DataSource dataSource, Component component),
    @required
        Result standardSection(DataSource dataSource, Component component),
    @required Result listSection(DataSource dataSource, Component component),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return section(dataSource, component);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result screen(Body body, Header header),
    Result body(List<dynamic> sections),
    Result header(String title),
    Result section(DataSource dataSource, Component component),
    Result standardSection(DataSource dataSource, Component component),
    Result listSection(DataSource dataSource, Component component),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (section != null) {
      return section(dataSource, component);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result screen(Screen value),
    @required Result body(Body value),
    @required Result header(Header value),
    @required Result section(Section value),
    @required Result standardSection(StandardSection value),
    @required Result listSection(ListSection value),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return section(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result screen(Screen value),
    Result body(Body value),
    Result header(Header value),
    Result section(Section value),
    Result standardSection(StandardSection value),
    Result listSection(ListSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (section != null) {
      return section(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SectionToJson(this)..['runtimeType'] = 'section';
  }
}

abstract class Section implements WidgetType {
  const factory Section(DataSource dataSource, Component component) = _$Section;

  factory Section.fromJson(Map<String, dynamic> json) = _$Section.fromJson;

  DataSource get dataSource;
  Component get component;
  $SectionCopyWith<Section> get copyWith;
}

abstract class $StandardSectionCopyWith<$Res> {
  factory $StandardSectionCopyWith(
          StandardSection value, $Res Function(StandardSection) then) =
      _$StandardSectionCopyWithImpl<$Res>;
  $Res call({DataSource dataSource, Component component});
}

class _$StandardSectionCopyWithImpl<$Res> extends _$WidgetTypeCopyWithImpl<$Res>
    implements $StandardSectionCopyWith<$Res> {
  _$StandardSectionCopyWithImpl(
      StandardSection _value, $Res Function(StandardSection) _then)
      : super(_value, (v) => _then(v as StandardSection));

  @override
  StandardSection get _value => super._value as StandardSection;

  @override
  $Res call({
    Object dataSource = freezed,
    Object component = freezed,
  }) {
    return _then(StandardSection(
      dataSource == freezed ? _value.dataSource : dataSource as DataSource,
      component == freezed ? _value.component : component as Component,
    ));
  }
}

@JsonSerializable()
class _$StandardSection implements StandardSection {
  const _$StandardSection(this.dataSource, this.component)
      : assert(dataSource != null),
        assert(component != null);

  factory _$StandardSection.fromJson(Map<String, dynamic> json) =>
      _$_$StandardSectionFromJson(json);

  @override
  final DataSource dataSource;
  @override
  final Component component;

  @override
  String toString() {
    return 'WidgetType.standardSection(dataSource: $dataSource, component: $component)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StandardSection &&
            (identical(other.dataSource, dataSource) ||
                const DeepCollectionEquality()
                    .equals(other.dataSource, dataSource)) &&
            (identical(other.component, component) ||
                const DeepCollectionEquality()
                    .equals(other.component, component)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dataSource) ^
      const DeepCollectionEquality().hash(component);

  @override
  $StandardSectionCopyWith<StandardSection> get copyWith =>
      _$StandardSectionCopyWithImpl<StandardSection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result screen(Body body, Header header),
    @required Result body(List<dynamic> sections),
    @required Result header(String title),
    @required Result section(DataSource dataSource, Component component),
    @required
        Result standardSection(DataSource dataSource, Component component),
    @required Result listSection(DataSource dataSource, Component component),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return standardSection(dataSource, component);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result screen(Body body, Header header),
    Result body(List<dynamic> sections),
    Result header(String title),
    Result section(DataSource dataSource, Component component),
    Result standardSection(DataSource dataSource, Component component),
    Result listSection(DataSource dataSource, Component component),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (standardSection != null) {
      return standardSection(dataSource, component);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result screen(Screen value),
    @required Result body(Body value),
    @required Result header(Header value),
    @required Result section(Section value),
    @required Result standardSection(StandardSection value),
    @required Result listSection(ListSection value),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return standardSection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result screen(Screen value),
    Result body(Body value),
    Result header(Header value),
    Result section(Section value),
    Result standardSection(StandardSection value),
    Result listSection(ListSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (standardSection != null) {
      return standardSection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$StandardSectionToJson(this)..['runtimeType'] = 'standardSection';
  }
}

abstract class StandardSection implements WidgetType {
  const factory StandardSection(DataSource dataSource, Component component) =
      _$StandardSection;

  factory StandardSection.fromJson(Map<String, dynamic> json) =
      _$StandardSection.fromJson;

  DataSource get dataSource;
  Component get component;
  $StandardSectionCopyWith<StandardSection> get copyWith;
}

abstract class $ListSectionCopyWith<$Res> {
  factory $ListSectionCopyWith(
          ListSection value, $Res Function(ListSection) then) =
      _$ListSectionCopyWithImpl<$Res>;
  $Res call({DataSource dataSource, Component component});
}

class _$ListSectionCopyWithImpl<$Res> extends _$WidgetTypeCopyWithImpl<$Res>
    implements $ListSectionCopyWith<$Res> {
  _$ListSectionCopyWithImpl(
      ListSection _value, $Res Function(ListSection) _then)
      : super(_value, (v) => _then(v as ListSection));

  @override
  ListSection get _value => super._value as ListSection;

  @override
  $Res call({
    Object dataSource = freezed,
    Object component = freezed,
  }) {
    return _then(ListSection(
      dataSource == freezed ? _value.dataSource : dataSource as DataSource,
      component == freezed ? _value.component : component as Component,
    ));
  }
}

@JsonSerializable()
class _$ListSection implements ListSection {
  const _$ListSection(this.dataSource, this.component)
      : assert(dataSource != null),
        assert(component != null);

  factory _$ListSection.fromJson(Map<String, dynamic> json) =>
      _$_$ListSectionFromJson(json);

  @override
  final DataSource dataSource;
  @override
  final Component component;

  @override
  String toString() {
    return 'WidgetType.listSection(dataSource: $dataSource, component: $component)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListSection &&
            (identical(other.dataSource, dataSource) ||
                const DeepCollectionEquality()
                    .equals(other.dataSource, dataSource)) &&
            (identical(other.component, component) ||
                const DeepCollectionEquality()
                    .equals(other.component, component)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dataSource) ^
      const DeepCollectionEquality().hash(component);

  @override
  $ListSectionCopyWith<ListSection> get copyWith =>
      _$ListSectionCopyWithImpl<ListSection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result screen(Body body, Header header),
    @required Result body(List<dynamic> sections),
    @required Result header(String title),
    @required Result section(DataSource dataSource, Component component),
    @required
        Result standardSection(DataSource dataSource, Component component),
    @required Result listSection(DataSource dataSource, Component component),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return listSection(dataSource, component);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result screen(Body body, Header header),
    Result body(List<dynamic> sections),
    Result header(String title),
    Result section(DataSource dataSource, Component component),
    Result standardSection(DataSource dataSource, Component component),
    Result listSection(DataSource dataSource, Component component),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listSection != null) {
      return listSection(dataSource, component);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result screen(Screen value),
    @required Result body(Body value),
    @required Result header(Header value),
    @required Result section(Section value),
    @required Result standardSection(StandardSection value),
    @required Result listSection(ListSection value),
  }) {
    assert(screen != null);
    assert(body != null);
    assert(header != null);
    assert(section != null);
    assert(standardSection != null);
    assert(listSection != null);
    return listSection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result screen(Screen value),
    Result body(Body value),
    Result header(Header value),
    Result section(Section value),
    Result standardSection(StandardSection value),
    Result listSection(ListSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listSection != null) {
      return listSection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ListSectionToJson(this)..['runtimeType'] = 'listSection';
  }
}

abstract class ListSection implements WidgetType {
  const factory ListSection(DataSource dataSource, Component component) =
      _$ListSection;

  factory ListSection.fromJson(Map<String, dynamic> json) =
      _$ListSection.fromJson;

  DataSource get dataSource;
  Component get component;
  $ListSectionCopyWith<ListSection> get copyWith;
}
