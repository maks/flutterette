import 'package:flutter/material.dart';
import 'package:flutterette/ui/head_data_form.dart';

class HeadDataPage extends StatelessWidget {
  const HeadDataPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Metadata'),
      ),
      body: HeadDataForm(
        onUpdate: null,
      ),
    );
  }
}
