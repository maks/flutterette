import 'package:flutter/material.dart';

class HttpDataServiceForm extends StatefulWidget {
  @override
  _HttpDataServiceFormState createState() => _HttpDataServiceFormState();
}

class _HttpDataServiceFormState extends State<HttpDataServiceForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _field(
            'Host',
            'eg. jsonplaceholder.typicode.com',
            notEmptyValidator,
          ),
          _field(
            'Path',
            'eg. /users/1',
            notEmptyValidator,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() == true) {
                  //TODO: create new Http DS
                } else {
                  debugPrint('invalid');
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
    FormFieldValidator<String>? validator,
  ) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 18,
        ),
        hintText: hint,
      ),
      // The validator receives the text that the user has entered.
      validator: validator,
    );
  }
}

String? notEmptyValidator(String? value) {
  if (value?.isEmpty == true) {
    return 'Please enter some text';
  }
  return null;
}
