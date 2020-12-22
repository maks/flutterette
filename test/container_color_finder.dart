import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

ContainerByColorFinder findByColor(Color color) => ContainerByColorFinder(color);

class ContainerByColorFinder extends MatchFinder {
  ContainerByColorFinder(this.color, {bool skipOffstage = true}) : super(skipOffstage: skipOffstage);

  final Color color;

  @override
  String get description => 'Container{color: "$color"}';

  @override
  bool matches(Element candidate) {
    if (candidate.widget is Container) {
      final containerWidget = candidate.widget as Container;
      if (containerWidget.decoration is BoxDecoration) {
        final decoration = containerWidget.decoration as BoxDecoration;
        return decoration.color.value == color.value;
      }
    }
    return false;
  }
}
