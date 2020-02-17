import 'package:flutter/material.dart';
import 'package:flutterette/models/section.dart';
import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/widget_data.dart';
import 'package:flutterette/models/widget_type.dart';

Widget buildWidget(WidgetType widgetType, WidgetData data) {
  switch (widgetType.runtimeType) {
    case Page:
      final p = (widgetType as Page);
      return Scaffold(
        body: buildWidget(p.body, null),
        appBar: buildWidget(p.header, null) as AppBar,
      );
    case Header:
      return AppBar(
        title: Text((widgetType as Header).title),
      );
    case Body:
      return Container(
        child: Column(
          children: _buildSectionWidgets((widgetType as Body).sections, null),
        ),
      );
    default:
      return Container();
  }
}

List<Widget> _buildSectionWidgets(
    List<Section> sections, List<WidgetData> data) {
  return sections
      .map((s) => Column(
            children: _buildSectionTypeWidgets(s.components, data),
          ))
      .toList();
}

List<Widget> _buildSectionTypeWidgets(
    List<Component> sectionTypes, List<WidgetData> data) {
  return sectionTypes.map(_buildSectionWidget).toList();
}

Widget _buildSectionWidget(Component sectionType) {
  switch (sectionType.runtimeType) {
    case LabelComponent:
      return Text((sectionType as LabelComponent).text);
    case ImageComponent:
      return Image.network((sectionType as ImageComponent).url);
    default:
      return Container();
  }
}
