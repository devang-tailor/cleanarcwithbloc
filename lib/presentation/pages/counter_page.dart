import 'package:cleanarcwithbloc/injection_container.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_bloc.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_event.dart';
import 'package:cleanarcwithbloc/presentation/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CounterBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${state.count}',
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () => context.read<CounterBloc>()
                            .add(DecrementCounterEvent()),
                        child: const Icon(Icons.remove),
                      ),
                      const SizedBox(width: 20),
                      FloatingActionButton(
                        onPressed: () => context.read<CounterBloc>()
                            .add(IncrementCounterEvent()),
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}