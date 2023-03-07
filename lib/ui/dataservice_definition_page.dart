import 'package:flutter/material.dart';
import 'package:flutterette/services/data_service.dart';
import 'package:flutterette/ui/http_dataservice_form.dart';

class DataServiceDefinitionPage extends StatelessWidget {
  final DataServiceType currentType;
  final Function(DataServiceType) setType;

  const DataServiceDefinitionPage({
    Key? key,
    required this.currentType,
    required this.setType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DS: ${currentType.name}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.extent(
                  maxCrossAxisExtent: 80,
                  children:
                      DataServiceType.values.map((e) => _dsWidget(e)).toList(),
                ),
              ),
            ),
            Divider(
              height: 8,
              color: Colors.blueGrey,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _currentTypeDefinitionForm(currentType),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dsWidget(DataServiceType ds) {
    Icon _icon;
    late VoidCallback _onPressed;
    switch (ds) {
      case DataServiceType.Http:
        _icon = _mkIcon(Icons.file_download);
        _onPressed = _handleSelected(DataServiceType.Http);
        break;
      case DataServiceType.GraphQL:
        _icon = _mkIcon(Icons.search);
        break;
      case DataServiceType.Websocket:
        _icon = _mkIcon(Icons.compare_arrows);
        break;
      case DataServiceType.Map:
        _icon = _mkIcon(Icons.account_tree);
        _onPressed = _handleSelected(DataServiceType.Map);
        break;
      case DataServiceType.List:
        _icon = _mkIcon(Icons.list);
        break;
      case DataServiceType.KVStore:
        _icon = _mkIcon(Icons.sports_hockey);
        break;
      case DataServiceType.Database:
        _icon = _mkIcon(Icons.corporate_fare);
        break;
      case DataServiceType.File:
        _icon = _mkIcon(Icons.file_copy);
        break;
      case DataServiceType.Bluetooth:
        _icon = _mkIcon(Icons.bluetooth);
        break;
      case DataServiceType.Location:
        _icon = _mkIcon(Icons.pin_drop);
        break;
      case DataServiceType.Sensor:
        _icon = _mkIcon(Icons.device_thermostat);
        break;
    }

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: Colors.grey[200],
        child: IconButton(
          icon: _icon,
          onPressed: _onPressed,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  VoidCallback _handleSelected(DataServiceType type) {
    return () {
      debugPrint('selected: $type');
      setType.call(type);
    };
  }

  Icon _mkIcon(IconData data) => Icon(
        data,
        size: 48,
      );

  Widget _currentTypeDefinitionForm(DataServiceType type) {
    Widget form;
    switch (type) {
      case DataServiceType.Http:
        form = HttpDataServiceForm();
        break;
      default:
        form = Text('${type.name}');
    }
    return Container(
      child: form,
    );
  }
}
