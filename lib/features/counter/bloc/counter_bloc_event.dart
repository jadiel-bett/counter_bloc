part of 'counter_bloc_bloc.dart';

@immutable
sealed class CounterBlocEvent {}

class CounterInitialEvent extends CounterBlocEvent {}

class CounterIncrementEvent extends CounterBlocEvent {}

class ShowSnackbarEvent extends CounterBlocEvent {}
