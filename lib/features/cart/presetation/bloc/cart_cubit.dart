import 'package:assignment_1/features/cart/data/cart_data.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0); // Initial state is 0

  // Increment the counter
  void increment() => emit(state + 1);

  // Decrement the counter
  void decrement() => emit(state - 1);

  double index1 = 0;

  void indexValue(double index) {
    index = index1;
  }

  double calculateTotal(
    var index,
  ) {
    return cartData.fold(
        0,
        (sum, item) =>
            sum +
            (discountedPrice(cartData[index].price,
                cartData[index].discountPercentage * state))); //* item.quantity
  }

  discountedPrice(double mrp, double discountPercent) {
    double result = (discountPercent / 100) * mrp;
    double finalResult = mrp - result;
    return double.parse(finalResult.toStringAsFixed(2));
  }
}
