import 'package:assignment_1/features/cart/presetation/bloc/cart_cubit.dart';
import 'package:assignment_1/features/cart/presetation/widgets/cart_appbar.dart';
import 'package:assignment_1/features/cart/presetation/widgets/cart_bottomsheet.dart';
import 'package:assignment_1/features/cart/presetation/widgets/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75), child: CartAppbar()),
      body: CartList(),
      bottomSheet: 
      
      BlocProvider(
        create: (context) => CounterCubit(),
        child: CartBottomsheet(),
      )
    );
  }
}
