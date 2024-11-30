import 'package:assignment_1/core/configs/app_pallate.dart';
import 'package:assignment_1/features/cart/data/cart_data.dart';
import 'package:flutter/material.dart';


class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      padding: const EdgeInsets.only(bottom: 200),
      itemCount: cartData.length,
      itemBuilder: (context, index) {
      return ListWidget(index: index,);
    },);
  }
}



class ListWidget extends StatelessWidget {
  final index;
  const ListWidget({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    ////////////////////////////////////////////////////////////////////////////////////
     discountedPrice(double mrp,double discountPercent){
     double result=(discountPercent / 100) * mrp;
     double finalResult =mrp-result;
     return double.parse(finalResult.toStringAsFixed(2));
    }
   /////////////////////////////////////////////////////////////////////////////////////
   double calculateTotal() {
  return cartData.fold(0, (sum, item) => sum + ( discountedPrice(cartData[index].price,cartData[index].discountPercentage)));  //* item.quantity
}
///////////////////////////////////////////////////////////
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      color: AppPallate.lightSurface,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: 230,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(width: 0.4, color: Colors.black26)),
            child: Image.network(
              cartData[index].thumbnail.toString(),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(
                    left: 8,
                    top: 8,
                  ),
                  child: Text(
                    cartData[index].title.toString(),
                    style: Theme.of(context).textTheme.labelMedium,
                  )),
              Container(margin: const EdgeInsets.only(left: 8), child:  Text(cartData[index].category.toString())),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: Text(
                        cartData[index].price.toString(),
                        style: Theme.of(context).textTheme.labelSmall,
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: Text(discountedPrice(cartData[index].price,cartData[index].discountPercentage).toString(),/////
                          style: Theme.of(context).textTheme.headlineMedium)),
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                     cartData[index].discountPercentage.toString() ,
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
                  child: const Row(

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