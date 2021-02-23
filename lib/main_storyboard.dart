import 'package:flutter/material.dart';
import 'package:flutterette/services/data_service.dart';
import 'package:storyboard/storyboard.dart';

import 'ui/dataservices_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: Storyboard(
        [
          DataServicesStory(),
        ],
      ),
    ),
  );
}

class DataServicesStory extends FullScreenStory {
  @override
  List<Widget> get storyContent {
    return [
      DataServicesPage(
        currentType: DataServiceType.Http,
        setType: (type) {},
      )
    ];
  }
}
