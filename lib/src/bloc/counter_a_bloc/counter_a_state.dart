part of 'counter_a_bloc.dart';

class CounterAState extends Equatable {
  final int count;
  const CounterAState({required this.count});

  CounterAState copyWith({int? count}){
    return CounterAState(count: count ?? this.count);
  }

  @override
  List<Object> get props => [count];
}