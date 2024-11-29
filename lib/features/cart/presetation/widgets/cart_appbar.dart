import 'package:flutter/material.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      
      title: Container(
          margin: const EdgeInsets.only(top: 22),
          child: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineLarge,
          )),
      centerTitle: true,
    );
  }
}
