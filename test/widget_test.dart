import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterette/app_player.dart';
import 'package:flutterette/bloc/app_bloc.dart';
import 'package:flutterette/models/f_app.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import 'container_color_finder.dart';

void main() {
  testWidgets('find container for empty app', (WidgetTester tester) async {
    final mockBloc = MockAppBloc();
    final testFApp =
        FApp.fromJson(jsonDecode(emptyAppJson) as Map<String, dynamic>);
    final sc = StreamController<FApp>();
    when(mockBloc.appStream).thenAnswer((_) => sc.stream);
    sc.sink.add(testFApp);

    await tester.pumpWidget(Provider<AppBloc>(
      child: AppPlayer(),
      create: (BuildContext context) => mockBloc,
    ));

    final emptyPlaceholder = find.byKey(Key('appContainer'));

    expect(emptyPlaceholder, findsOneWidget);

    //extra pump to advance time in fakeasync to get stream to spit out new items
    await tester.pump();

    final placeholderAfterInit = emptyPlaceholder;

    expect(placeholderAfterInit, findsNothing);
  });

  testWidgets('find label for minimal app', (WidgetTester tester) async {
    final mockBloc = MockAppBloc();
    final testFApp = FApp.fromJson(AppBloc.getFlutteretteRoot(
        jsonDecode(singleSectionAppJson) as Map<String, dynamic>));
    final sc = StreamController<FApp>();
    when(mockBloc.appStream).thenAnswer((_) => sc.stream);
    sc.sink.add(testFApp);

    await tester.pumpWidget(Provider<AppBloc>(
      child: AppPlayer(),
      create: (BuildContext context) => mockBloc,
    ));

    //extra pump to advance time in fakeasync to get stream to spit out new items
    await tester.pump();

    final labelFinder = find.byType(Text);
    expect(labelFinder, findsOneWidget);
  });
}

class MockAppBloc extends Mock implements AppBloc {}

const String emptyAppJson = '''{
   "flutterette": {
        "head": {
            "title": "A Test App"
        },
        "screens": []
   }
}''';

const String singleSectionAppJson = '''{
  "flutterette": {
    "head": {"title": "A Test App"},
    "screens": [
      {
        "body": {
          "sections": [
            {
              "dataSource" : {
                  "data" : {
                    "title" : "foobar"
                  }
              },  
              "component": 
                {"type": "label", "text": "title"}
            }
          ]
        }
      }
    ]
  }
}''';
