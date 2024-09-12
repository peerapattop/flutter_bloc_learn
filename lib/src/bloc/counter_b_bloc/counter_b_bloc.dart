import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_b_event.dart';
part 'counter_b_state.dart';

class CounterBBloc extends Bloc<CounterBEvent, CounterBState> {
  CounterBBloc() : super(const CounterBState(count: 0)) {
    //Add
    on<CounterBEventAdd>((event, emit) {
      emit(state.copyWith(count: state.count+1));
    });

    //Reset
    on<CounterBEventReset>((event, emit) {
      emit(state.copyWith(count: 0));
    });
  }
}

