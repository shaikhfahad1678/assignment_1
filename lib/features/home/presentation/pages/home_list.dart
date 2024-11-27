import 'package:assignment_1/features/home/presentation/widgets/grid_widgeet.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
         padding: EdgeInsets.only(top: kToolbarHeight),
        itemCount: 6,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GridWidgeet();
          },),
    );
  }
}
