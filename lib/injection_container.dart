import 'package:cleanarcwithbloc/data/repositories/counter_repository_impl.dart';
import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';
import 'package:cleanarcwithbloc/domain/usecases/decrement_counter.dart';
import 'package:cleanarcwithbloc/domain/usecases/get_counter.dart';
import 'package:cleanarcwithbloc/domain/usecases/increment_counter.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Repository
  getIt.registerLazySingleton<CounterRepository>(
        () => CounterRepositoryImpl(),
  );

  // Use cases
  getIt.registerLazySingleton(() => GetCounter(getIt()));
  getIt.registerLazySingleton(() => IncrementCounter(getIt()));
  getIt.registerLazySingleton(() => DecrementCounter(getIt()));

  // Bloc
  getIt.registerFactory(
        () => CounterBloc(getIt(), getIt(), getIt()),
  );
}