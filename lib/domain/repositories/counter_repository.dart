import 'package:cleanarcwithbloc/domain/entities/counter.dart';

abstract class CounterRepository {
  Counter getCounter();
  void incrementCounter();
  void decrementCounter();
}