import 'package:assignment_1/core/app_pallate.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightThemeMode = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(backgroundColor: AppPallate.lightSurface),
      
      );

  static final darkThemeMode = ThemeData.dark().copyWith();
}
