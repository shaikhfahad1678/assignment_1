import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    // on<CalculateTotalPriceEvent>(calculateTotalPriceEvent);
    on<IncreementEvent>(increementEvent);
    // on<DecreementEvent>(decreementEvent);
  }

  FutureOr<void> calculateTotalPriceEvent(
      CalculateTotalPriceEvent event, Emitter<CartState> emit) {}

  FutureOr<void> increementEvent(
      IncreementEvent event, Emitter<CartState> emit) {
    final currentState = state as IcreementState;
    emit(IcreementState(currentState.value + 1, value: 0));
  }

  FutureOr<void> decreementEvent(
      DecreementEvent event, Emitter<CartState> emit) {}
}
