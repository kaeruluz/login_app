import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
        color: Colors.black87, fontWeight: FontWeight.bold),
    titleSmall: GoogleFonts.poppins(color: Colors.deepPurple, fontSize: 15),
  );
  static TextTheme darkTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(color: Colors.white70),
    titleSmall: GoogleFonts.poppins(color: Colors.white60, fontSize: 15),
  );
}
