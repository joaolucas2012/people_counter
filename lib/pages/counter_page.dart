import 'package:flutter/material.dart';
import 'package:people_counterr/widgets/button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(color: Colors.amber),
        child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Pode entrar!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    "$count",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      text: "Saiu",
                      onPressedFunction: (count > 0) ? decrement : null,
                    ),
                    Button(
                      text: "Entrou",
                      onPressedFunction: (count < 20) ? increment : null,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  void increment() {
    setState(() => count += 1);
  }

  void decrement() {
    setState(() => count -= 1);
  }
}
