import 'package:flutter/material.dart';
import 'package:flutterette/services/data_service.dart';
import 'package:flutterette/services/http_data_service.dart';

class HttpDataServiceForm extends StatefulWidget {
  final Function(DataService) onUpdate;

  const HttpDataServiceForm({Key key, @required this.onUpdate})
      : super(key: key);
  @override
  _HttpDataServiceFormState createState() => _HttpDataServiceFormState();
}

class _HttpDataServiceFormState extends State<HttpDataServiceForm> {
  final _formKey = GlobalKey<FormState>();

  String name;
  String host;
  String path;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _field(
            'Name',
            'eg. placeholders',
            notEmptyValidator,
            (value) => name = value,
          ),
          _field(
            'Host',
            'eg. jsonplaceholder.typicode.com',
            notEmptyValidator,
            (value) => host = value,
          ),
          _field(
            'Path',
            'eg. /users/1',
            notEmptyValidator,
            (value) => path = value,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  final nuDS =
                      HttpDataService(name: name, host: host, path: path);
                  widget.onUpdate.call(nuDS);
                }
              },
              child: Text('Create'),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField _field(
    String label,
    String hint,
    FormFieldValidator<String> validator,
    Function(String) onSaved,
  ) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 18,
        ),
        hintText: hint,
      ),
      onSaved: onSaved,
      // The validator receives the text that the user has entered.
      validator: validator,
    );
  }
}

String notEmptyValidator(String value) {
  if (value.isEmpty) {
    return 'Please enter some text';
  }
  return null;
}
