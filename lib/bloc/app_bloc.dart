import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutterette/models/f_app.dart';

class AppBloc {
  final _appStream = StreamController<FApp>();

  FApp _currentApp;

  Stream<FApp> get appStream {
    if (_currentApp == null) {
      _loadAppAsAsset();
    }
    return _appStream.stream;
  }

  Future<void> _loadAppAsAsset() async {
    final json =
        (jsonDecode(await rootBundle.loadString('assets/apps/sample.json'))
            as Map<String, dynamic>);
    _currentApp = FApp.fromJson(getFlutteretteRoot(json));
    _appStream.add(_currentApp);
  }

  static Map<String, dynamic> getFlutteretteRoot(Map<String, dynamic> json) =>
      json['flutterette'] as Map<String, dynamic>;
}
