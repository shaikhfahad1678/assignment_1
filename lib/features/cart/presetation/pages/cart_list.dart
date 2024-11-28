import 'package:assignment_1/features/cart/presetation/widgets/list_widget.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 20),
      itemCount: 4,
      itemBuilder: (context, index) {
      return ListWidget();
    },);
  }
}