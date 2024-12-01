part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

final class CartInitial extends CartState {}

class CartActionState extends CartState{
     
}

class IcreementState extends CartState{
    final int value;

  IcreementState(int i, {required this.value});

  
}