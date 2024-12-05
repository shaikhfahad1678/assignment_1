part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomenavigatCartActionState extends HomeActionState {}

class HomeLoadingState extends HomeState{}

class HomeLoadedSucessState extends HomeState{}

class HommeErrorState extends HomeState{}


