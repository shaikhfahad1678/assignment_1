part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CalculateTotalPriceEvent extends CartEvent{}

class IncreementEvent extends CartEvent{}

class DecreementEvent extends CartEvent{}