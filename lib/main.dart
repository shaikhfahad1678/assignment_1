import 'package:assignment_1/core/configs/theme.dart';
import 'package:assignment_1/features/cart/presetation/bloc/cart_bloc.dart';
import 'package:assignment_1/features/home/presentation/bloc/home_bloc.dart';
import 'package:assignment_1/features/home/presentation/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
       BlocProvider(create: (_) => HomeBloc()),
        
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightThemeMode ,
      home: const Home(),
    );}}
