import 'dart:convert';

import 'package:flutterette/models/section.dart';
import 'package:flutterette/models/components.dart';
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

  group('deserialise section types', () {
    test('deserialise section', () {
      final testJson = '''{"body": {
                    "sections": [
                        {
                            "components": [
                                {
                                    "type": "label",
                                    "text": "JL Picard"
                                }
                            ]
                        }
                    ]
                }, "header": null}''';
      final p = Page.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<Page>());
      expect(p.body.sections, isA<List<Section>>());
      expect(p.body.sections[0], isA<Section>());
      expect(p.body.sections[0].components, isA<List<Component>>());
      expect(p.body.sections[0].components[0].type, equals('label'));
      expect((p.body.sections[0].components[0] as LabelComponent).text,
          equals('JL Picard'));
    });
  });
}
