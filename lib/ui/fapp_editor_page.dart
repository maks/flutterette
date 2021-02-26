import 'package:flutter/material.dart';
import 'package:flutterette/models/f_app.dart';

class FAppEditorPage extends StatelessWidget {
  final Function(FAppPart) onSelected;

  const FAppEditorPage({
    Key key,
    @required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FApp Editor'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: FAppPart.values.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${FAppPart.values[index]}'),
                onTap: () => onSelected(FAppPart.values[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
