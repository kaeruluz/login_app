import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class OutlinedButtonTheme {
  OutlinedButtonTheme._(); // to avoid creating instances

  // -- light theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: secondaryColor,
        side: const BorderSide(color: secondaryColor),
        padding: const EdgeInsets.symmetric(vertical: buttonHeight)),
  );

  // -- dark theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: whiteColor,
        side: const BorderSide(color: whiteColor),
        padding: const EdgeInsets.symmetric(vertical: buttonHeight)),
  );
}
