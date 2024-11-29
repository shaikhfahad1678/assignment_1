import 'package:assignment_1/core/configs/app_pallate.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3),
        itemBuilder: (context, index) {
          return GridWidget(context);
        },
      ),
    );
  }
}


 Widget GridWidget(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;

     return Container(
      color: AppPallate.lightSurface,
      margin: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: screenWidth * 0.6, // Responsive width
                height: screenWidth * 0.5, // Responsive height
                decoration: BoxDecoration(
                  border: Border.all(width: 0.4, color: Colors.black26),
                ),
                child: Image.network(
                  'https://cdn.thewirecutter.com/wp-content/media/2024/05/smartphone-2048px-1013.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: screenWidth * 0.2, // Adjust button width
                height: screenWidth * 0.08, // Adjust button height
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: AppPallate.darkPink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 8, top: 8),
            child: Text(
              'iPhone 9',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: const Text('Apple'),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  '₹549',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  ' ₹477.85',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Text(
              '12.96% OFF',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );





 }