import 'package:flutter/material.dart';
import 'package:flutterette/services/data_service.dart';

class DataServicesListPage extends StatelessWidget {
  final List<DataService> services;
  final Function(DataService) onSelected;
  final VoidCallback onAdd;

  const DataServicesListPage({
    Key? key,
    required this.services,
    required this.onSelected,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Services'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: services.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${services[index]}'),
                onTap: () => onSelected(services[index]),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: onAdd,
      ),
    );
  }
}
