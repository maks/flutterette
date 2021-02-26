import 'package:flutter/material.dart';
import 'package:flutterette/services/data_service.dart';
import 'package:flutterette/ui/dataservices_list_page.dart';
import 'package:storyboard/storyboard.dart';

import 'services/http_data_service.dart';
import 'ui/dataservice_definition_page.dart';
import 'ui/fapp_editor_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: Storyboard(
        [
          FAppEditorPageStory(),
          DataServiceDefinitionStory(),
          DataServicesListStory(),
        ],
      ),
    ),
  );
}

class FAppEditorPageStory extends FullScreenStory {
  @override
  List<Widget> get storyContent {
    return [
      FAppEditorPage(
        onSelected: (fAppPart) => debugPrint('selected part: $fAppPart'),
      )
    ];
  }
}

class DataServiceDefinitionStory extends FullScreenStory {
  @override
  List<Widget> get storyContent {
    return [
      DataServiceDefinitionPage(
        currentType: DataServiceType.Http,
        setType: (type) => debugPrint('set DS type: $type'),
        updateDataService: (ds) => debugPrint('Update DS: $ds'),
      )
    ];
  }
}

class DataServicesListStory extends FullScreenStory {
  @override
  List<Widget> get storyContent {
    return [
      DataServicesListPage(
        onSelected: (service) {
          debugPrint('selected: $service');
        },
        onAdd: () {
          debugPrint('add DS');
        },
        services: [
          HttpDataService(
            name: 'user 1',
            host: 'jsonplaceholder.typicode.com',
            path: '/users/1',
          ),
          HttpDataService(
            name: 'all albums',
            host: 'jsonplaceholder.typicode.com',
            path: '/albums',
          )
        ],
      )
    ];
  }
}
