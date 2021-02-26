import 'package:flutter/material.dart';
import 'package:flutterette/bloc/app_bloc.dart';
import 'package:flutterette/models/f_app.dart';
import 'package:flutterette/ui/dataservice_definition_page.dart';
import 'package:flutterette/ui/dataservices_list_page.dart';
import 'package:flutterette/ui/fapp_editor_page.dart';
import 'package:provider/provider.dart';

import 'services/data_service.dart';

class AppEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FApp>(
        stream: Provider.of<AppBloc>(context).appStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final app = snapshot.data;
            final appTitle = app.head?.title ?? 'Editor';
            final bloc = Provider.of<AppBloc>(context);
            return MaterialApp(
              title: appTitle,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: LayoutBuilder(builder: (context, snapshot) {
                return FAppEditorPage(
                  onSelected: (fAppPart) {
                    switch (fAppPart) {
                      case FAppPart.Head:
                        // TODO: Handle this case.
                        break;
                      case FAppPart.Services:
                        _navigateToDSList(context, app.services);
                        break;
                      case FAppPart.Screens:
                        // TODO: Handle this case.
                        break;
                    }
                  },
                );
              }),
            );
          } else {
            return Container(
              color: Colors.blueAccent,
              key: Key('appContainer'),
            );
          }
        });
  }

  void _navigateToDSList(BuildContext context, List<DataService> services) {
    Navigator.push<void>(
        context,
        MaterialPageRoute(
          builder: (context) => DataServicesListPage(
            services: services,
            onSelected: (ds) => _navigateToDS(context, ds),
            onAdd: () => print('navigate to Add New ds'),
          ),
        ));
  }

  void _navigateToDS(BuildContext context, DataService service) {
    Navigator.push<void>(
        context,
        MaterialPageRoute(
          builder: (context) => DataServiceDefinitionPage(
            currentType: service.type,
            setType: (dsType) => print('set new type: $dsType'),
            updateDataService: (ds) {},
          ),
        ));
  }
}
