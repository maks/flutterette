import 'package:flutter/material.dart';
import 'package:flutterette/hex_color.dart';
import 'package:flutterette/font_map.dart';
import 'package:flutterette/models/standard_section.dart';
import 'package:flutterette/models/layouts.dart';
import 'package:flutterette/models/list_section.dart';
import 'package:flutterette/models/section.dart';
import 'package:flutterette/models/components.dart';
import 'package:flutterette/models/style_data.dart';
import 'package:flutterette/models/widget_type.dart';

Widget buildWidget(BuildContext context, WidgetType widgetType, Map data) {
  switch (widgetType.runtimeType) {
    case Screen:
      final screen = (widgetType as Screen);
      return Scaffold(
        body: buildWidget(context, screen.body, null),
        appBar: screen.header != null
            ? buildWidget(context, screen.header, null) as AppBar
            : null,
      );
    case Header:
      return AppBar(
        title: Text((widgetType as Header).title),
      );
    case Body:
      return Container(
        child: Column(
          children: _buildSectionWidgets(
              context, (widgetType as Body).sections as List<Section>),
        ),
      );
    default:
      return Container();
  }
}

List<Widget> _buildSectionWidgets(
    BuildContext context, List<Section> sections) {
  return sections.map((section) {
    switch (section.runtimeType) {
      case StandardSection:
        return Expanded(
          child: ListView(
            children: [
              _buildComponentWidget(
                  context,
                  (section as StandardSection).component,
                  section.dataSource.data)
            ],
          ),
        );
      case ListSection:
        final listSection = section as ListSection;
        return _buildListWidget(
            context, listSection.dataSource.listData, listSection.component);
      default:
        throw Exception('invalid Section type: ${section.runtimeType}');
    }
  }).toList();
}

Widget _buildListWidget(BuildContext context,
    List<Map<String, dynamic>> listData, Component itemComponent) {
  return Expanded(
    child: ListView.builder(
      itemCount: listData.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildComponentWidget(context, itemComponent, listData[index]);
      },
    ),
  ); //TODO: actually use listSection to build the Listview
}

List<Widget> _buildComponentWidgets(BuildContext context,
    List<Component> components, Map<String, dynamic> data) {
  return components
      .map((c) => _buildComponentWidget(context, c, data))
      .toList();
}

Widget _buildComponentWidget(
    BuildContext context, Component component, Map<String, dynamic> data) {
  switch (component.runtimeType) {
    case LabelComponent:
      final label = (component as LabelComponent);
      return _applyPadding(
          Text(
            data[label.text] as String,
            style: _buildTextStyle(context, label.style),
          ),
          label.style);
    case ImageComponent:
      return Image.network(
        (component as ImageComponent).url,
        scale: 2.0,
      );
    case HorizontalLayoutComponent:
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildComponentWidgets(
            context, (component as HorizontalLayoutComponent).components, data),
      );
    case VerticalLayoutComponent:
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildComponentWidgets(
            context, (component as VerticalLayoutComponent).components, data),
      );
    default:
      return Container();
  }
}

/// map StyleData into a Flutter TextStyle
TextStyle _buildTextStyle(BuildContext context, StyleData style) {
  final defaultTextStyle = Theme.of(context).textTheme.bodyText2;

  if (style != null) {
    var textStyle = TextStyle(
      inherit: true,
      color: HexColor(style.color),
      fontSize: style.font?.size,
      fontFamily: style.font?.family,
      fontStyle:
          (true == style.font?.isItalic) ? FontStyle.italic : FontStyle.normal,
    );
    if (style.font?.family != null) {
      final fontFunction = fontMap[style.font.family];
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
