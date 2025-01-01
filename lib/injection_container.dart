import 'package:cleanarcwithbloc/data/repositories/counter_repository_impl.dart';
import 'package:cleanarcwithbloc/domain/repositories/counter_repository.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Repository
  getIt.registerLazySingleton<CounterRepository>(
        () => CounterRepositoryImpl(),
  );

  // Bloc
  getIt.registerFactory(
        () => CounterBloc(getIt()),
  );
}