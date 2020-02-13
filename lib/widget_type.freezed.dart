// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of 'widget_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$WidgetType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result header(),
    @required Result body(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result header(),
    Result body(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result header(Header value),
    @required Result body(Body value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result header(Header value),
    Result body(Body value),
    @required Result orElse(),
  });
}

class _$Header with DiagnosticableTreeMixin implements Header {
  const _$Header();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return 'WidgetType.header()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WidgetType.header'));
  }

  @override
  bool operator ==(dynamic other) {
    return other is Header;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result header(),
    @required Result body(),
  }) {
    assert(header != null);
    assert(body != null);
    return header();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result header(),
    Result body(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (header != null) {
      return header();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result header(Header value),
    @required Result body(Body value),
  }) {
    assert(header != null);
    assert(body != null);
    return header(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result header(Header value),
    Result body(Body value),
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
  const factory Header() = _$Header;
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
    @required Result header(),
    @required Result body(),
  }) {
    assert(header != null);
    assert(body != null);
    return body();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result header(),
    Result body(),
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
    @required Result header(Header value),
    @required Result body(Body value),
  }) {
    assert(header != null);
    assert(body != null);
    return body(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result header(Header value),
    Result body(Body value),
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
