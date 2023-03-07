import 'dart:async';

import 'package:flutter/foundation.dart';


void flutterOnErrorHandler(FlutterErrorDetails details) {
  if (kReleaseMode) {
    // In production mode, send error to the application zone.
    Zone.current.handleUncaughtError(details.exception, details.stack ?? StackTrace.fromString(''));
  } else {
    // In debug mode, simply print to console.
    FlutterError.dumpErrorToConsole(details);
  }
}

Future<void> reportError(Object error, StackTrace? stackTrace) async {
  if (kReleaseMode) {
    //TODO
  } else {
    // In debug mode, simply log the error and stacktrace
    print(error.toString() + '\n' + stackTrace.toString());
  }
}
