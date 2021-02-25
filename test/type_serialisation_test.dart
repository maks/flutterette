import 'dart:convert';

import 'package:test/test.dart';

import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/data_source.dart';
import 'package:flutterette/models/f_app.dart';
import 'package:flutterette/models/list_section.dart';
import 'package:flutterette/models/section.dart';
import 'package:flutterette/models/standard_section.dart';
import 'package:flutterette/models/widget_type.dart';
import 'package:flutterette/services/data_service.dart';
import 'package:flutterette/services/http_data_service.dart';

void main() {
  group('deserialise widget types', () {
    test('deserialise Page empty', () {
      final testJson = '''{"body": null, "header": null}''';
      final p = Screen.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<Screen>());
    });

    test('deserialise Page with Header', () {
      final testJson = '''{"body": null, "header": { "title" : "foo" }}''';
      final p = Screen.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<Screen>());
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
      final p = Screen.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<Screen>());
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
      final p = Screen.fromJson((jsonDecode(testJson) as Map<String, dynamic>));
      expect(p, isA<Screen>());
      expect(p.body.sections, isA<List<Section>>());
      expect(p.body.sections[0], isA<ListSection>());
      expect((p.body.sections[0] as ListSection).dataSource, isA<DataSource>());
    });
  });

  test('serialise http data service ', () {
    final s = HttpDataService(host: 'acme.com', path: '/test', name: 'a test');
    final json = s.toJson();
    expect(json['host'], equals('acme.com'));
    expect(json['path'], equals('/test'));
    expect(json['name'], equals('a test'));
    expect(json['type'], equals('Http'));
  });

  group('flutterette app serialisation', () {
    final s = HttpDataService(host: 'acme.com', path: '/test', name: 'a test');
    final fapp = FApp(services: [s]);
    final json = fapp.toJson();

    test('serialise a flutterette app that has a service', () {
      expect(json['services'][0]['host'], equals('acme.com'));
    });

    test('deserialise a flutterette app that has a service', () {
      final deSerialisedF = FApp.fromJson(json);
      expect(deSerialisedF.services[0].type.name, equals('Http'));
      expect(deSerialisedF.services[0].name, equals('a test'));
    });
  });
}
