import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';
import 'package:cleanarcwithbloc/domain/usecases/decrement_counter.dart';
import 'package:cleanarcwithbloc/domain/usecases/get_counter.dart';
import 'package:cleanarcwithbloc/domain/usecases/increment_counter.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_event.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final GetCounter _getCounter;
  final IncrementCounter _incrementCounter;
  final DecrementCounter _decrementCounter;

  CounterBloc(this._getCounter, this._incrementCounter, this._decrementCounter)
      : super(CounterState(count: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      _incrementCounter.execute();
      emit(CounterState(count: _getCounter.execute().value));
    });

    on<DecrementCounterEvent>((event, emit) {
      _decrementCounter.execute();
      emit(CounterState(count: _getCounter.execute().value));
    });
  }
}