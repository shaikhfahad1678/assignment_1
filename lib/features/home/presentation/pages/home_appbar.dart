import 'package:assignment_1/core/app_pallate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      title:Text('Catalogue',style: Theme.of(context).textTheme.headlineLarge,) ,
      centerTitle: true,
      actions: [
        Container(
          margin: EdgeInsets.all(8),
          child: Badge(
            
            largeSize: 10,
            child: Icon(Icons.shopping_cart_outlined),
          ),
        )
      ],
    );
  }
}