import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';

class IncrementCounter {
  final CounterRepository repository;

  IncrementCounter(this.repository);

  void execute() {
    repository.incrementCounter();
  }
}