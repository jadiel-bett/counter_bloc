import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocInitial()) {
    on<CounterInitialEvent>(counterInitialEvent);
    on<CounterIncrementEvent>(counterIncrementEvent);
    on<ShowSnackbarEvent>(showSnackbarEvent);
  }

  int val = 0;

  FutureOr<void> counterInitialEvent(
      CounterInitialEvent event, Emitter<CounterBlocState> emit) {
    emit(CounterIncrementState(value: 0));
  }

  FutureOr<void> counterIncrementEvent(
      CounterIncrementEvent event, Emitter<CounterBlocState> emit) {
    val = val + 1;
    emit(CounterIncrementState(value: val));
  }

  FutureOr<void> showSnackbarEvent(
      ShowSnackbarEvent event, Emitter<CounterBlocState> emit) {
    emit(ShowSnackbarState());
  }
}
