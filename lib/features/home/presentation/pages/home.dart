import 'package:assignment_1/features/home/presentation/bloc/home_bloc.dart';
import 'package:assignment_1/features/home/presentation/widgets/home_appbar.dart';
import 'package:assignment_1/features/home/presentation/widgets/home_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return const SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(75), child: HomeAppbar()),
              body: HomeList(),
            ),
          );
        });
  }
}
