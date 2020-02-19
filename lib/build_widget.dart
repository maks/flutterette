import 'package:flutter/material.dart';
import 'package:flutterette/color.dart';
import 'package:flutterette/font_map.dart';
import 'package:flutterette/models/fixed_section.dart';
import 'package:flutterette/models/layouts.dart';
import 'package:flutterette/models/list_section.dart';
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
        appBar: p.header != null
            ? buildWidget(context, p.header, null) as AppBar
            : null,
      );
    case Header:
      return AppBar(
        title: Text((widgetType as Header).title),
      );
    case Body:
      return Container(
        child: ListView(
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
  return sections.map((section) {
    switch (section.runtimeType) {
      case FixedSection:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildComponentWidgets(
              context, (section as FixedSection).items, data),
        );
      case ListSection:
        return _buildListWidgets(context, section as ListSection, data);
      default:
        throw Exception('invalid Section type: ${section.runtimeType}');
    }
  }).toList();
}

List<Widget> _buildComponentWidgets(
    BuildContext context, List<Component> components, List<WidgetData> data) {
  return components.map((c) => _buildComponentWidget(context, c)).toList();
}

ListView _buildListWidgets(
    BuildContext context, ListSection listSection, List<WidgetData> data) {
  return ListView(); //TODO: actually use listSection to build the Listview
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
  final defaultTextStyle = Theme.of(context).textTheme.body1;

  if (style != null) {
    TextStyle textStyle = TextStyle(
      inherit: true,
      color: HexColor(style.color),
      fontSize: style.font?.size,
      fontFamily: style.font?.family,
      fontStyle:
          (true == style.font?.isItalic) ? FontStyle.italic : FontStyle.normal,
    );
    if (style.font?.family != null) {
      final TextStyle Function({TextStyle textStyle}) fontFunction =
          fontMap[style.font.family];
      textStyle = (fontFunction != null)
          ? fontFunction(textStyle: textStyle)
          : textStyle;
    }
    return defaultTextStyle.merge(textStyle);
  } else {
    return defaultTextStyle;
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
