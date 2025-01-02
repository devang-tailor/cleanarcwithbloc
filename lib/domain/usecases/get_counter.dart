import 'package:cleanarcwithbloc/domain/entities/counter.dart';
import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';

class GetCounter {
  final CounterRepository repository;

  GetCounter(this.repository);

  Counter execute() {
    return repository.getCounter();
  }
}