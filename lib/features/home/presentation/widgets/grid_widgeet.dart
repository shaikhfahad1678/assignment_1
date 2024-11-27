import 'package:flutter/material.dart';

class GridWidgeet extends StatelessWidget {
  const GridWidgeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: 200,
              child: Image.network('https://image.oppo.com/content/dam/oppo/common/mkt/v2-2/reno-12-pro-en/listpage/427-600-brown.png.thumb.webp',fit: BoxFit.cover,),),
            Container(child: Text('Add',style: Theme.of(context).textTheme.headlineLarge,),)
          ],),
          Text('title'),
          Text('company'),
          Row(children: [
            Text('mrp'),
            Text('discounted price'),
            Text('discount')
          ],)
        ],
      ),
    );
  }
}