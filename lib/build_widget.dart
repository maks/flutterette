import 'package:flutter/material.dart';
import 'package:flutterette/models/layouts.dart';
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
            children: _buildComponentWidgets(s.items, data),
          ))
      .toList();
}

List<Widget> _buildComponentWidgets(
    List<Component> components, List<WidgetData> data) {
  return components.map(_buildComponentWidget).toList();
}

Widget _buildComponentWidget(Component component) {
  switch (component.runtimeType) {
    case LabelComponent:
      return Text((component as LabelComponent).text);
    case ImageComponent:
      return Image.network((component as ImageComponent).url);
    case HorizontalLayoutComponent:
      return Row(
        children: _buildComponentWidgets(
            (component as HorizontalLayoutComponent).components, null),
      );
    case VerticalLayoutComponent:
      return Column(
        children: _buildComponentWidgets(
            (component as VerticalLayoutComponent).components, null),
      );
    default:
      return Container();
  }
}
