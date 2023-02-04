import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextThemes.lightTextTheme,
    elevatedButtonTheme: Themes.lightElevatedButtonTheme,
    fontFamily: GoogleFonts.manrope().fontFamily,
    useMaterial3: true,
  );
}
