import 'package:assignment_1/core/app_pallate.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      color: AppPallate.lightSurface,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: 230,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(width: 0.4, color: Colors.black26)),
            child: Image.network(
              'https://cdn.thewirecutter.com/wp-content/media/2024/05/smartphone-2048px-1013.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  )),
              Container(
              
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.25, top: 74),
                alignment: Alignment.bottomRight,
                child: Container(
                    width: 100,
                    height: 35,
                  decoration: BoxDecoration(color: AppPallate.cartButton,
                  borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.remove),
                      Text('2',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink),),
                      Icon(Icons.add),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
