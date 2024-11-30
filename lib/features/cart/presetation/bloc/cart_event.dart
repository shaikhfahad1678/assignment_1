part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CalculateTotalPriceEvent extends CartEvent{}

