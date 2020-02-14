import 'package:flutter/material.dart';
import 'package:flutterette/app_player.dart';
import 'package:provider/provider.dart';

import 'bloc/app_bloc.dart';

void main() => runApp(
      Provider<AppBloc>(
        child: AppPlayer(),
        create: (BuildContext context) => AppBloc(),
      ),
    );
