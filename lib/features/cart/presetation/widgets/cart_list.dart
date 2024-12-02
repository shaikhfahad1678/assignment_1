import 'package:assignment_1/core/configs/app_pallate.dart';
import 'package:assignment_1/features/cart/data/cart_data.dart';
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
  final int index;
  const ListWidget({super.key, required this.index});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) {
        var discountedPrice = CounterCubit().discountedPrice;
        num amountPrice = CounterCubit().calculateTotal(widget.index);
        CounterCubit().index1 = amountPrice;
        CounterCubit().indexValue(widget.index.toInt());

        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          color: AppPallate.lightSurface,
          padding: EdgeInsets.all(screenWidth * 0.02),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Section
              Container(
                margin: EdgeInsets.only(right: screenWidth * 0.02),
                width: screenWidth * 0.35,
                height: screenWidth * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.4, color: Colors.black26),
                ),
                child: Image.network(
                  cartData[widget.index].thumbnail.toString(),
                  fit: BoxFit.cover,
                ),
              ),

              // Details Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        cartData[widget.index].title.toString(),
                        style: Theme.of(context).textTheme.labelMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // Category
                    Text(
                      cartData[widget.index].category.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),

                    // Price and Discounted Price
                    Row(
                      children: [
                        Text(
                          '\$${cartData[widget.index].price.toString()}',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          '\$${discountedPrice(cartData[widget.index].price, cartData[widget.index].discountPercentage).toString()}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),

                    
                    Text(
                      '${cartData[widget.index].discountPercentage}% off',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),

                  
                    SizedBox(height: screenHeight * 0.02),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 100,
                        height: 33,
                        decoration: BoxDecoration(
                          color: AppPallate.cartButton,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Decrement Button
                            InkWell(
                              onTap: () {
                                context.read<CounterCubit>().decrement();
                              },
                              child: const Icon(Icons.remove),
                            ),

                            // State Value
                            Text(
                              '$state',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                              ),
                            ),

                            // Increment Button
                            InkWell(
                              onTap: () {
                                context.read<CounterCubit>().increment();
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
