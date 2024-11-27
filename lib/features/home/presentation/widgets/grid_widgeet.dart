import 'package:assignment_1/core/app_pallate.dart';
import 'package:flutter/material.dart';

class GridWidgeet extends StatelessWidget {
  const GridWidgeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppPallate.lightSurface,
      margin: EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 264,
                height: 300,
                child: Image.network(
                  'https://cdn.thewirecutter.com/wp-content/media/2024/05/smartphone-2048px-1013.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Text(
                  'Add',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(
                left: 8,
                top: 8,
              ),
              child: Text(
                'iPhone 9',
                style: Theme.of(context).textTheme.labelMedium,
              )),
          Container(margin: EdgeInsets.only(left: 8), child: Text('Apple')),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text(
                    '₹549',
                    style: Theme.of(context).textTheme.labelSmall,
                  )),
              Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text(' ₹477.85',
                      style: Theme.of(context).textTheme.headlineMedium)),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(
                '12.96% OFF',
                style: Theme.of(context).textTheme.titleMedium,
              ))
        ],
      ),
    );
  }
}
