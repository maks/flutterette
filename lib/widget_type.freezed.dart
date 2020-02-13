// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of 'widget_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$WidgetType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result page(dynamic body, dynamic header),
    @required Result body(),
    @required Result header(String title),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result page(dynamic body, dynamic header),
    Result body(),
    Result header(String title),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result page(Page value),
    @required Result body(Body value),
    @required Result header(Header value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result page(Page value),
    Result body(Body value),
    Result header(Header value),
    @required Result orElse(),
  });
}

class _$Page with DiagnosticableTreeMixin implements Page {
  const _$Page({this.body, this.header});

  @override
  final dynamic body;
  @override
  final dynamic header;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return 'WidgetType.page(body: $body, header: $header)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WidgetType.page'))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('header', header));
  }

  @override
  bool operator ==(dynamic other) {
    return other is Page &&
        (identical(other.body, body) || other.body == body) &&
        (identical(other.header, header) || other.header == header);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ body.hashCode ^ header.hashCode;

  @override
  _$Page copyWith({
    Object body = immutable,
    Object header = immutable,
  }) {
    return _$Page(
      body: body == immutable ? this.body : body as dynamic,
      header: header == immutable ? this.header : header as dynamic,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result page(dynamic body, dynamic header),
    @required Result body(),
    @required Result header(String title),
  }) {
    assert(page != null);
    assert(body != null);
    assert(header != null);
    return page(this.body, this.header);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result page(dynamic body, dynamic header),
    Result body(),
    Result header(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (page != null) {
      return page(this.body, this.header);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result page(Page value),
    @required Result body(Body value),
    @required Result header(Header value),
  }) {
    assert(page != null);
    assert(body != null);
    assert(header != null);
    return page(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result page(Page value),
    Result body(Body value),
    Result header(Header value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (page != null) {
      return page(this);
    }
    return orElse();
  }
}

abstract class Page implements WidgetType {
  const factory Page({dynamic body, dynamic header}) = _$Page;

  dynamic get body;
  dynamic get header;

  Page copyWith({dynamic body, dynamic header});
}

class _$Body with DiagnosticableTreeMixin implements Body {
  const _$Body();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return 'WidgetType.body()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WidgetType.body'));
  }

  @override
  bool operator ==(dynamic other) {
    return other is Body;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result page(dynamic body, dynamic header),
    @required Result body(),
    @required Result header(String title),
  }) {
    assert(page != null);
    assert(body != null);
    assert(header != null);
    return body();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result page(dynamic body, dynamic header),
    Result body(),
    Result header(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (body != null) {
      return body();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result page(Page value),
    @required Result body(Body value),
    @required Result header(Header value),
  }) {
    assert(page != null);
    assert(body != null);
    assert(header != null);
    return body(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result page(Page value),
    Result body(Body value),
    Result header(Header value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (body != null) {
      return body(this);
    }
    return orElse();
  }
}

abstract class Body implements WidgetType {
  const factory Body() = _$Body;
}

class _$Header with DiagnosticableTreeMixin implements Header {
  const _$Header({this.title});

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return 'WidgetType.header(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WidgetType.header'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return other is Header &&
        (identical(other.title, title) || other.title == title);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ title.hashCode;

  @override
  _$Header copyWith({
    Object title = immutable,
  }) {
    return _$Header(
      title: title == immutable ? this.title : title as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result page(dynamic body, dynamic header),
    @required Result body(),
    @required Result header(String title),
  }) {
    assert(page != null);
    assert(body != null);
    assert(header != null);
    return header(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result page(dynamic body, dynamic header),
    Result body(),
    Result header(String title),
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
    @required Result page(Page value),
    @required Result body(Body value),
    @required Result header(Header value),
  }) {
    assert(page != null);
    assert(body != null);
    assert(header != null);
    return header(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result page(Page value),
    Result body(Body value),
    Result header(Header value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (header != null) {
      return header(this);
    }
    return orElse();
  }
}

abstract class Header implements WidgetType {
  const factory Header({String title}) = _$Header;

  String get title;

  Header copyWith({String title});
}
