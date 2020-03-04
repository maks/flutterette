# Flutterette

[![Codemagic build status](https://api.codemagic.io/apps/5e4b829a542055d96d6eb133/5e4b829a542055d96d6eb132/status_badge.svg)](https://codemagic.io/apps/5e4b829a542055d96d6eb133/5e4b829a542055d96d6eb132/latest_build)

Build dynamic UI's using JSON, populate the UI using JSON (or other data sources), use Rx operators to put data into UI's or build UI's based on the data, apply Rx operators to user input streams to cause actions.

Inspired by [Jasonette](https://jasonette.com).

## Building

Until [this bug with code gen on hot-reload is fixed](https://github.com/dart-lang/build/issues/1132) to re-generate code you need to run:
`flutter packages pub run build_runner build`


### Sentry config

The DSN needs to be supplied by the build environment.

For native Android, this is via a properties file in: `app/src/main/resources` which is created by the following custom script in Codemagic and for Flutter, this is via a Dart file created at build time also by this script:
```shell
#!/usr/bin/env sh

set -e # exit on first failed commandset

mkdir -p $FCI_BUILD_DIR/android/app/src/main/resources
echo dsn=$SENTRY_DSN > $FCI_BUILD_DIR/android/app/src/main/resources/sentry.properties

echo "const DSN='$SENTRY_DSN';" > $FCI_BUILD_DIR/lib/env.dart
```