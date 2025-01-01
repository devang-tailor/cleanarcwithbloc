import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_event.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CounterRepository _repository;

  CounterBloc(this._repository) : super(CounterState(count: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      _repository.incrementCounter();
      emit(CounterState(count: _repository.getCounter().value));
    });

    on<DecrementCounterEvent>((event, emit) {
      _repository.decrementCounter();
      emit(CounterState(count: _repository.getCounter().value));
    });
  }
}