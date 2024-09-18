part of 'counter_bloc_bloc.dart';

@immutable
sealed class CounterBlocState {}

final class CounterBlocInitial extends CounterBlocState {}

abstract class CounterBlocActionState extends CounterBlocState {}

class CounterInitialState extends CounterBlocState {}

class CounterIncrementState extends CounterBlocState {
  final int value;

  CounterIncrementState({required this.value});
}

class ShowSnackbarState extends CounterBlocActionState {}
