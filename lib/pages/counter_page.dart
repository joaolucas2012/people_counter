import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(color: Colors.white),
      child: Container(
          alignment: Alignment.center,
          child: const Text(
            "Welcome to the Counter!",
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
