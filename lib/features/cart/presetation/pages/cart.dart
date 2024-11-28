import 'package:assignment_1/core/app_pallate.dart';
import 'package:assignment_1/features/cart/presetation/pages/cart_appbar.dart';
import 'package:assignment_1/features/cart/presetation/pages/cart_bottomsheet.dart';
import 'package:assignment_1/features/cart/presetation/pages/cart_list.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75), child: CartAppbar()),
      body: CartList(),
      bottomSheet:CartBottomsheet()
    );
  }
}
