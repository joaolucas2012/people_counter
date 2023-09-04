import 'package:flutter/material.dart';
import 'package:people_counterr/pages/counter_page.dart';

void main() {
  runApp(const MaterialApp(home: PeopleCounterApp()));
}

class PeopleCounterApp extends StatelessWidget {
  const PeopleCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}
