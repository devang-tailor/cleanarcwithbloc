import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';

class DecrementCounter {
  final CounterRepository repository;

  DecrementCounter(this.repository);

  void execute() {
    repository.decrementCounter();
  }
}