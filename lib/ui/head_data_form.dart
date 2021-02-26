import 'package:flutter/material.dart';
import 'package:flutterette/models/head.dart';

class HeadDataForm extends StatefulWidget {
  final Function(Head) onUpdate;

  const HeadDataForm({Key key, @required this.onUpdate}) : super(key: key);
  @override
  _HttpDataServiceFormState createState() => _HttpDataServiceFormState();
}

class _HttpDataServiceFormState extends State<HeadDataForm> {
  final _formKey = GlobalKey<FormState>();

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _field(
            'Title',
            'eg. My App',
            notEmptyValidator,
            (value) => title = value,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  final nuHead = Head(title: title);
                  widget.onUpdate.call(nuHead);
                }
              },
              child: Text('Save'),
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
