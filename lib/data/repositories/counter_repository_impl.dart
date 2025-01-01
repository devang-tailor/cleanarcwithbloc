import 'package:cleanarcwithbloc/domain/entities/counter.dart';
import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';

class CounterRepositoryImpl implements  CounterRepository {
  int _count = 0;

  @override
  Counter getCounter() {
    return Counter(value: _count);
  }

  @override
  void incrementCounter() {
    _count++;
  }

  @override
  void decrementCounter() {
    _count--;
  }
}
