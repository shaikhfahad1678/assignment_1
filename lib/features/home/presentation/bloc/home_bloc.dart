import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<NavigateToCartEvent>(navigateToCartEvent);
  }
}

FutureOr<void> navigateToCartEvent(
    NavigateToCartEvent event, Emitter<HomeState> emit) {
  print('navigate');
  emit(HomenavigatCartActionState());
}
