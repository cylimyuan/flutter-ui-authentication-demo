import 'package:flutter/material.dart';

final themeData = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF3B24C6),
    primarySwatch:
        ColorUtil.instance.convertToMaterial(const Color(0xFF6D44E0)),
    textTheme: const TextTheme(
            button: TextStyle(
                color: Colors.red,
                fontFamily: "Open Sans",
                fontWeight: FontWeight.bold,
                fontSize: 16),
            caption: TextStyle(),
            headline5:
                TextStyle(fontFamily: "Open Sans", fontWeight: FontWeight.bold))
        .apply(bodyColor: Colors.white, displayColor: Colors.white));

class ColorUtil {
  static final ColorUtil instance = ColorUtil._internal();
  ColorUtil._internal();

  MaterialColor convertToMaterial(Color color) {
    return MaterialColor(color.value, {
      50: color.withOpacity(.1),
      100: color.withOpacity(.2),
      200: color.withOpacity(.3),
      300: color.withOpacity(.4),
      400: color.withOpacity(.5),
      500: color.withOpacity(.6),
      600: color.withOpacity(.7),
      700: color.withOpacity(.7),
      800: color.withOpacity(.8),
      900: color.withOpacity(.9),
    });
  }
}
