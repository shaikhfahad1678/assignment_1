import 'package:assignment_1/core/app_pallate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightThemeMode = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(backgroundColor: AppPallate.lightAppbar),
      textTheme: TextTheme(headlineLarge: GoogleFonts.lato(color: AppPallate.primaryText)),
      scaffoldBackgroundColor: AppPallate.lightBackground
      );

  static final darkThemeMode = ThemeData.dark().copyWith();
}
