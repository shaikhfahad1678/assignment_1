import 'package:assignment_1/features/home/presentation/bloc/home_bloc.dart';
import 'package:assignment_1/features/home/presentation/widgets/home_appbar.dart';
import 'package:assignment_1/features/home/presentation/widgets/home_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    context.read<HomeBloc>().add(HomeInitialEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75), child: HomeAppbar()),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.runtimeType == HomeLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.runtimeType == HomeLoadedSucessState) {
            return HomeList();
          }  else {
            return Center(
              child: Text('Error while loading Data'),
            );
          }
        },
      ),
    );
  }
}
