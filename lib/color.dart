import 'package:flutter/material.dart';

/*
* A Dart Utility class for Using Hex color string in Flutter
* Examples:
* color: HexColor("#ff4433")
* color: HexColor("ff4433")
* color: HexColor("#80ff4433")
*
* ref: https://gist.github.com/BirjuVachhani/99b1e25dfcdfeb5fff734ad6b81d2182
* */
class HexColor extends Color {
  HexColor(String hexString) : super(_parseColor(hexString));

  static int _parseColor(String color) {
    try {
      color = color.toUpperCase().replaceAll("#", "");
      if (color.length == 6) {
        color = "FF" + color;
      }
    } on Exception catch (_) {
      return Colors.white.value;
    }
    return int.parse(color, radix: 16);
  }
}
