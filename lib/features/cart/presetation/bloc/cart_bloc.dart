import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CalculateTotalPriceEvent>(calculateTotalPriceEvent);
  }

  FutureOr<void> calculateTotalPriceEvent(CalculateTotalPriceEvent event, Emitter<CartState> emit) {
    
  }
}
