import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider/counter.dart';
import 'counter_provider/user_provider.dart';

class Userpage extends StatelessWidget {
  const Userpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider ${context.watch<Counter>().count}"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cookie.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "users ${context.watch<User>().number}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "users ${context.watch<User>().user}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<User>().addUser('DAVID');
                context.read<Counter>().add();
              },
              child: const Text("Add user"),
            ),
            ElevatedButton(
              onPressed: () => context.read<User>().removeUser('Deji'),
              child: const Text("remove user"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("BACK"),
            ),
          ],
        ),
      ),
    );
  }
}
