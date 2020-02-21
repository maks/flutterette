# Flutterette

[![Codemagic build status](https://api.codemagic.io/apps/5e4b829a542055d96d6eb133/5e4b829a542055d96d6eb132/status_badge.svg)](https://codemagic.io/apps/5e4b829a542055d96d6eb133/5e4b829a542055d96d6eb132/latest_build)

Build dynamic UI's using JSON, populate the UI using JSON (or other data sources), use Rx operators to put data into UI's or build UI's based on the data, apply Rx operators to user input streams to cause actions.

Inspired by [Jasonette](https://jasonette.com).

## Building

Until [this bug with code gen on hot-reload is fixed](https://github.com/dart-lang/build/issues/1132) to re-generate code you need to run:
`flutter packages pub run build_runner build`
