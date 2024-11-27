import 'package:assignment_1/features/home/presentation/pages/home_appbar.dart';
import 'package:assignment_1/features/home/presentation/pages/home_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: HomeAppbar()),
        body: HomeList(),
      ),
    );
  }
}