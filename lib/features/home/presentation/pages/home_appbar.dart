import 'package:assignment_1/core/app_pallate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title:Text('Catalogue',style: GoogleFonts.lato(color: AppPallate.primaryText),) ,
      centerTitle: true,
      actions: [
        Badge(
          child: Icon(Icons.shopping_cart_outlined),
        )
      ],
    );
  }
}