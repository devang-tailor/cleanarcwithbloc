import 'package:cleanarcwithbloc/injection_container.dart';
import 'package:cleanarcwithbloc/presentation/pages/counter_page.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterPage(),
    );
  }
}