import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterette/app_editor.dart';
import 'package:flutterette/app_player.dart';
import 'package:flutterette/error_reporting.dart';
import 'package:provider/provider.dart';

import 'bloc/app_bloc.dart';

void main() {
  // This captures errors reported by the Flutter framework.
  FlutterError.onError = flutterOnErrorHandler;

  if (kReleaseMode) {
    // no red screen of death in Prod pls
    ErrorWidget.builder = (FlutterErrorDetails details) {
      reportError(details.summary, details.stack);
      return Container(
        color: Colors.blueGrey,
      );
    };
  }

  // This creates a [Zone] that contains the Flutter application and establishes
  // an error handler that captures errors.
  //
  // Using a zone makes sure that as many errors as possible are captured,
  // including those thrown from [Timer]s, microtasks, I/O, and those forwarded
  // from the `FlutterError` handler above.
  runZonedGuarded<Future<void>>(() async {
    // Need to init native here
    WidgetsFlutterBinding.ensureInitialized();

    // FIXME: TEMP HACK, this needs to be moved into Bloc
    // how will we switch between modes? volume up/down key for now? later nfc tag or ble button
    final editMode = true;

    runApp(
      Provider<AppBloc>(
        child: editMode ? AppEditor() : AppPlayer(),
        create: (BuildContext context) => AppBloc(),
      ),
    );
  }, (Object error, StackTrace stackTrace) {
    // Whenever an error occurs, call the `reportError` function. This sends
    // Dart errors to the dev console or Sentry depending on the environment.
    reportError(error, stackTrace);
  });
}
