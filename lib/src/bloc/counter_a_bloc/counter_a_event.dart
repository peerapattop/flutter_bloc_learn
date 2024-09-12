part of 'counter_a_bloc.dart';

sealed class CounterAEvent extends Equatable {
  const CounterAEvent();
  @override

  List<Object?> get props => [];
}

class CounterAEventAdd extends CounterAEvent{}

class CounterAEventReset extends CounterAEvent{}

