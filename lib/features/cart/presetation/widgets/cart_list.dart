import 'package:assignment_1/core/configs/app_pallate.dart';
import 'package:assignment_1/features/cart/data/cart_data.dart';
import 'package:assignment_1/features/cart/presetation/bloc/cart_bloc.dart';
import 'package:assignment_1/features/cart/presetation/bloc/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 200),
      itemCount: cartData.length,
      itemBuilder: (context, index) {
        return BlocProvider(
          create: (context) => CounterCubit(),
          child: ListWidget(
            index: index,
          ),
        );
      },
    );
  }
}

class ListWidget extends StatefulWidget {
  final index;
  const ListWidget({super.key, required this.index});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    ////////////////////////////////////////////////////////////////////////////////////
   

    /////////////////////////////////////////////////////////////////////////////////////
   

///////////////////////////////////////////////////////////
    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) {
         var discountedPrice= CounterCubit().discountedPrice;
         var amountPrice= CounterCubit().calculateTotal(widget.index);
         CounterCubit().index1=amountPrice;
         CounterCubit().indexValue(widget.index);
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
                  cartData[widget.index].thumbnail.toString(),
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
                        cartData[widget.index].title.toString(),////////////////
                        style: Theme.of(context).textTheme.labelMedium,
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: Text(cartData[widget.index].category.toString())),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Text(
                            cartData[widget.index].price.toString(),
                            style: Theme.of(context).textTheme.labelSmall,
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Text(
                              discountedPrice(cartData[widget.index].price,
                                      cartData[widget.index].discountPercentage)
                                  .toString(), /////
                              style:
                                  Theme.of(context).textTheme.headlineMedium)),
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: Text(
                        cartData[widget.index].discountPercentage.toString(),
                        style: Theme.of(context).textTheme.titleMedium,
                      )),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.25,
                        top: 74),
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          color: AppPallate.cartButton,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(onTap: () {
                            context.read<CounterCubit>().decrement();
                          }, child: Icon(Icons.remove)),
                          Text(
                            '$state',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                          InkWell(onTap: () {
                              context.read<CounterCubit>().increment();
                              setState(() {
                                
                              });
                              
                          }, child: Icon(Icons.add)),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
