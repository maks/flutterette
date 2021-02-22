# Flutterette

[![Codemagic build status](https://api.codemagic.io/apps/5e4b829a542055d96d6eb133/5e4b829a542055d96d6eb132/status_badge.svg)](https://codemagic.io/apps/5e4b829a542055d96d6eb133/5e4b829a542055d96d6eb132/latest_build)

Build dynamic UI's using JSON, populate the UI using JSON (or other data sources), use Rx operators to put data into UI's or build UI's based on the data, apply Rx operators to user input streams to cause actions.

Inspired by [Jasonette](https://jasonette.com).

## Flutterette Mobile

### Overview

Flutterette Mobile (FLTM) is inherently a modal system, made up of two modes: editing and running. While currently very distinct, the long term goal is to reduce the conceptual and practical distance between the modes, in keeping with [Brett Victors approach to building dynamic systems](https://www.youtube.com/watch?v=PUv66718DII) and [how they should be built in the future](https://www.youtube.com/watch?v=8pTEmbeENF4).


### Data Services

At the core of FLTM is data and hence Data Services. Data Services are in edit-mode definitions ways to access data while in run-mode Data Services emit data sources which provide streams of data.

Data Services come in many different types, as described below.

#### Http

Properties:
* Host
* Path


#### GraphQL

#### WebSocket

#### Map

#### List

#### K-V Store

#### Database (sqlite)

#### File

#### Bluetooth (BLE)

#### Location

#### Sensor




### Data Sources

Data Sources encapsulate a stream of data. 


### Events

Events can be either triggered via user input or via the system.
An example user event is a tap on a onscreen ui widget.


### Operator chains

Operators provide operations that can be applied to Data Sources and Events.


### FAQ

#### What is the difference between Flutterette Mobile & Flutterette ?

Flutterette Mobile  is the specific implementation of Flutterette, intended to be used and deployed on mobile (phone) devices only, while Flutterette is the over arching project covering all form factors of computing and devices.
Think of FLTM as the Special Theory of Relativity, to Flutterettes General Theory.

----

## Developing Flutterette

### Building

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