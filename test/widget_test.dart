import 'package:cleanarcwithbloc/presentation/bloc/counter_event.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:cleanarcwithbloc/domain/entities/counter.dart';
import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';
import 'package:cleanarcwithbloc/domain/usecases/get_counter.dart';
import 'package:cleanarcwithbloc/domain/usecases/increment_counter.dart';
import 'package:cleanarcwithbloc/domain/usecases/decrement_counter.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_bloc.dart';

class MockCounterRepository extends Mock implements CounterRepository {
  int _count = 0;

  @override
  Counter getCounter() => Counter(value: _count);

  @override
  void incrementCounter() {
    _count++;
  }

  @override
  void decrementCounter() {
    _count--;
  }
}

void main() {
  group('Counter Bloc Tests', () {
    late MockCounterRepository mockRepository;
    late CounterBloc counterBloc;

    setUp(() {
      mockRepository = MockCounterRepository();
      counterBloc = CounterBloc(
          GetCounter(mockRepository),
          IncrementCounter(mockRepository),
          DecrementCounter(mockRepository)
      );
    });

    tearDown(() {
      counterBloc.close();
    });

    blocTest<CounterBloc, CounterState>(
      'increments counter',
      build: () => counterBloc,
      act: (bloc) => bloc.add(IncrementCounterEvent()),
      expect: () => [isA<CounterState>().having((state) => state.count, 'count', 1)],
    );

    blocTest<CounterBloc, CounterState>(
      'decrements counter',
      build: () => counterBloc,
      act: (bloc) => bloc.add(DecrementCounterEvent()),
      expect: () => [isA<CounterState>().having((state) => state.count, 'count', -1)],
    );
  });
}