import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<NavigateToCartEvent>(navigateToCartEvent);
  }



FutureOr<void> navigateToCartEvent(
    NavigateToCartEvent event, Emitter<HomeState> emit) {
  print('navigate');
  emit(HomenavigatCartActionState());
}


  FutureOr<void> homeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) async{
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadedSucessState());

  }

}