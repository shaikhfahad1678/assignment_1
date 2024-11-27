import 'package:assignment_1/core/theme.dart';
import 'package:assignment_1/features/home/presentation/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightThemeMode ,
      home: Home(),
    );}}
