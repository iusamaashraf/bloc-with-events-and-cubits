import 'package:bloc_practice/bloc/counter_bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>(
        (event, emit) => emit(state <= 0 ? 0 : state - 1));
  }
}
