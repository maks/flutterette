import 'package:flutter/material.dart';
import 'package:flutterette/bloc/app_bloc.dart';
import 'package:flutterette/build_widget.dart';
import 'package:flutterette/models/f_app.dart';
import 'package:provider/provider.dart';

class AppPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FApp>(
        stream: Provider.of<AppBloc>(context).appStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final app = snapshot.data;
            final appTitle = app.head?.title ?? 'Flutterette';
            final bloc = Provider.of<AppBloc>(context);
            debugPrint('Default Service: ${bloc.defaultService}');
            return MaterialApp(
              title: appTitle,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: buildWidget(
                context,
                app.firstPage,
                null,
              ),
            );
          } else {
            return Container(
              color: Colors.blueAccent,
              key: Key('appContainer'),
            );
          }
        });
  }
}
