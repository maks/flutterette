import 'package:flutter/material.dart';
import 'package:flutterette/color.dart';
import 'package:flutterette/models/layouts.dart';
import 'package:flutterette/models/section.dart';
import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/style_data.dart';
import 'package:flutterette/models/widget_data.dart';
import 'package:flutterette/models/widget_type.dart';

Widget buildWidget(
    BuildContext context, WidgetType widgetType, WidgetData data) {
  switch (widgetType.runtimeType) {
    case Page:
      final p = (widgetType as Page);
      return Scaffold(
        body: buildWidget(context, p.body, null),
        appBar: buildWidget(context, p.header, null) as AppBar,
      );
    case Header:
      return AppBar(
        title: Text((widgetType as Header).title),
      );
    case Body:
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildSectionWidgets(
              context, (widgetType as Body).sections, null),
        ),
      );
    default:
      return Container();
  }
}

List<Widget> _buildSectionWidgets(
    BuildContext context, List<Section> sections, List<WidgetData> data) {
  return sections
      .map((s) => Column(
            children: _buildComponentWidgets(context, s.items, data),
          ))
      .toList();
}

List<Widget> _buildComponentWidgets(
    BuildContext context, List<Component> components, List<WidgetData> data) {
  return components.map((c) => _buildComponentWidget(context, c)).toList();
}

Widget _buildComponentWidget(BuildContext context, Component component) {
  switch (component.runtimeType) {
    case LabelComponent:
      final label = (component as LabelComponent);
      return _applyPadding(
          Text(
            label.text,
            style: _buildTextStyle(context, label.style),
          ),
          label.style);
    case ImageComponent:
      return Image.network((component as ImageComponent).url);
    case HorizontalLayoutComponent:
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildComponentWidgets(
            context, (component as HorizontalLayoutComponent).components, null),
      );
    case VerticalLayoutComponent:
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildComponentWidgets(
            context, (component as VerticalLayoutComponent).components, null),
      );
    default:
      return Container();
  }
}

/// map StyleData into a Flutter TextStyle
TextStyle _buildTextStyle(BuildContext context, StyleData style) {
  if (style != null) {
    return TextStyle(
      color: HexColor(style.color),
    );
  } else {
    return Theme.of(context).textTheme.body1;
  }
}

Widget _applyPadding(Widget widget, StyleData style) {
  if (style?.padding != null) {
    return Padding(
      padding: _insetsFromData(style.padding),
      child: widget,
    );
  } else {
    return widget;
  }
}

EdgeInsets _insetsFromData(PaddingData padding) => EdgeInsets.only(
      left: padding.left ?? 0,
      right: padding.right ?? 0,
      top: padding.top ?? 0,
      bottom: padding.bottom ?? 0,
    );
