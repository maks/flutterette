import 'dart:convert';

import 'package:flutterette/models/widget_type.dart';
import 'package:test/test.dart';

void main() {
  group('deserialise widget types', () {
    test('deserialise Page empty', () {
      final testJson = '''{"body": null, "header": null}''';
      final p = Page.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<Page>());
    });

    test('deserialise Page with Header', () {
      final testJson = '''{"body": null, "header": { "title" : "foo" }}''';
      final p = Page.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<Page>());
      expect(p.header, isA<Header>());
      expect(p.header.title, equals('foo'));
    });
  });
}
