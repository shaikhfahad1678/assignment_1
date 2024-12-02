import 'package:assignment_1/features/cart/data/cart_data.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0); // Initial state is 0

  // Increment the counter
  void increment() => emit(state + 1);

  // Decrement the counter
  void decrement() => emit(state - 1);

  num index1 = 0;

  void indexValue(num index) {
    index = index1;
  }

  double calculateTotal(
    int index,
  ) {
    return cartData.fold(
        0,
        (sum, item) =>
            sum +
            (discountedPrice(cartData[index].price,
                cartData[index].discountPercentage))); //* item.quantity
  }

  discountedPrice(num mrp, num discountPercent) {
    num result = (discountPercent / 100) * mrp;
    num finalResult = mrp - result;
    return num.parse(finalResult.toStringAsFixed(2));
  }
}
