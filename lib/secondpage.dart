import 'package:flutter/material.dart';
import 'counter_provider/counter.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Data From Homepage ${context.watch<Counter>().count}",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => context.read<Counter>().subtract(),
            child: const Text("Subtract"),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Back"))
        ],
      ),
    );
  }
}
