import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutterette/models/f_app.dart';
import 'package:flutterette/services/http_data_service.dart';

class AppBloc {
  final _appStream = StreamController<FApp?>();

  FApp? _currentApp;

  final List<HttpDataService> _services = [];

  HttpDataService get defaultService => _services.first;

  Stream<FApp?> get appStream {
    if (_currentApp == null) {
      _loadAppAsAsset();
    }
    final stream = _appStream.stream.asBroadcastStream();
    stream.listen((fApp) {
      _createServices(fApp?.head?.services);
    });
    return stream;
  }

  Future<void> _loadAppAsAsset() async {
    final json =
        (jsonDecode(await rootBundle.loadString('assets/apps/sample.json'))
            as Map<String, dynamic>);
    _currentApp = FApp.fromJson(getFlutteretteRoot(json));

    _appStream.add(_currentApp);
  }

  void _createServices(List<HttpDataService>? services) {
    if (services == null) {
      return;
    }
    for (final s in services) {
      _services.add(s);
    }
  }

  static Map<String, dynamic> getFlutteretteRoot(Map<String, dynamic> json) =>
      json['flutterette'] as Map<String, dynamic>;
}
