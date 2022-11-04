import 'package:counter_provider_example/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider/counter.dart';
import 'counter_provider/user_provider.dart';
import 'user.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

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
                "Button Pressed ${context.watch<Counter>().count} Times\n users ${context.watch<User>().user}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            // Text(
            //     "users ${context.watch<User>().user}",
            //     style:const TextStyle(fontSize: 20),
            //   ),
            ElevatedButton(
              onPressed: () => context.read<Counter>().add(),
              child: const Text("Add"),
            ),
            ElevatedButton(
              onPressed: () => context.read<Counter>().subtract(),
              child: const Text("Subtract"),
            ),
            ElevatedButton(
              onPressed: () => context.read<Counter>().reset(),
              child: const Text("Reset"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Second()));
              },
              child: const Text("NextPage"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>const Userpage()));
              },
              child: const Text("Userpage"),
            ),
          ],
        ),
      ),
    );
  }
}
