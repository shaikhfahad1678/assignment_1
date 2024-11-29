import 'package:assignment_1/core/configs/app_pallate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightThemeMode = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(backgroundColor: AppPallate.lightAppbar),
      textTheme: TextTheme(
        headlineLarge:
            GoogleFonts.lato(color: AppPallate.primaryText, fontSize: 24),
        labelMedium: GoogleFonts.lato(
            color: AppPallate.primaryText,
            fontSize: 18,
            fontWeight: FontWeight.bold),
        labelSmall: GoogleFonts.lato(
            color: Colors.black45,
            fontSize: 13,
            decoration: TextDecoration.lineThrough),
        headlineMedium: GoogleFonts.lato(
            color: AppPallate.primaryText,
            fontSize: 13,
            fontWeight: FontWeight.bold),
        titleMedium: GoogleFonts.lato(
            color: Colors.pink[300], fontSize: 11, fontWeight: FontWeight.bold),
      ),
      scaffoldBackgroundColor: AppPallate.lightBackground);

  static final darkThemeMode = ThemeData.dark().copyWith();
}
