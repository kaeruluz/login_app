import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class ElevatedButtonTheme {
  ElevatedButtonTheme._();
  // -- light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        foregroundColor: whiteColor,
        backgroundColor: secondaryColor,
        side: const BorderSide(color: secondaryColor),
        padding: const EdgeInsets.symmetric(vertical: buttonHeight)),
  );

  // -- dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData();
}
