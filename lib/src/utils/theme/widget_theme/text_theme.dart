import 'package:flutter/material.dart';

class TextThemes {
  static TextTheme lightTextTheme = const TextTheme(
    titleLarge: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(color: Colors.black87, fontSize: 13),
  );

  static TextTheme darkTextTheme = const TextTheme(
    titleLarge: TextStyle(color: Colors.white70),
    titleSmall: TextStyle(color: Colors.white60, fontSize: 13),
  );
}
