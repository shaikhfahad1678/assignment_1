import 'package:assignment_1/features/home/presentation/pages/home_appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60), child: HomeAppbar()),
      body: Container(),
    );
  }
}