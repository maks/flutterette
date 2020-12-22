import 'dart:convert';

import 'package:flutterette/models/data_source.dart';
import 'package:flutterette/models/standard_section.dart';
import 'package:flutterette/models/list_section.dart';
import 'package:flutterette/models/section.dart';
import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:test/test.dart';

void main() {
  group('deserialise widget types', () {
    test('deserialise Page empty', () {
      final testJson = '''{"body": null, "header": null}''';
      final p = FPage.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<FPage>());
    });

    test('deserialise Page with Header', () {
      final testJson = '''{"body": null, "header": { "title" : "foo" }}''';
      final p = FPage.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<FPage>());
      expect(p.header, isA<Header>());
      expect(p.header.title, equals('foo'));
    });
  });

  group('deserialise section types', () {
    test('deserialise section', () {
      final testJson = '''
      {
        "body": 
        {
          "sections": [
            {
              "component": 
              {
                "type": "label",
                "text": "title"
              },
              "dataSource" : {
                  "data" : {
                    "title" : "JL Picard"
                  }
              }                       
            }
        ]
    }, "header": null}
    ''';
      final p = FPage.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<FPage>());
      expect(p.body.sections, isA<List<Section>>());
      expect(p.body.sections[0], isA<StandardSection>());
      expect(
          (p.body.sections[0] as StandardSection).component, isA<Component>());
      expect((p.body.sections[0] as StandardSection).component.type,
          equals('label'));
      expect(
          ((p.body.sections[0] as StandardSection).component as LabelComponent)
              .text,
          equals('title'));
    });

    test('deserialise list section type', () {
      final testJson = '''{"body": {
                    "sections": [
                        {
                            "dataSource": {
                              "listData" : [{}]  
                            }
                        }
                    ]
                }, "header": null}''';
      final p = FPage.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<FPage>());
      expect(p.body.sections, isA<List<Section>>());
      expect(p.body.sections[0], isA<ListSection>());
      expect((p.body.sections[0] as ListSection).dataSource, isA<DataSource>());
    });
  });
}
