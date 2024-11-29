import 'package:assignment_1/features/cart/presetation/pages/cart.dart';
import 'package:assignment_1/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
      final homeBloc = HomeBloc();//instance of class

    return 
    BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,

      listener: (context, state) {
       if (state is HomenavigatCartActionState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Cart(),
              ));
      }
      },
      builder: (context, state) {
        return
    AppBar(
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      title: Container(
          margin: const EdgeInsets.only(top: 22),
          child: Text(
            'Catalogue',
            style: Theme.of(context).textTheme.headlineLarge,
          )),
      centerTitle: true,
      actions: [
        InkWell(
          onTap: () {
            homeBloc.add(NavigateToCartEvent());
          },
          child: Container(
            margin: const EdgeInsets.only(top: 22, right: 8),
            child: const Badge(
              label: Text('00'),
              largeSize: 22,
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 35,
              ),
            ),
          ),
        )
      ],
    );
  });
  }
}
