import 'package:counter_provider_example/counter_provider/counter.dart';
import 'package:counter_provider_example/counter_provider/user_provider.dart';
import 'package:counter_provider_example/secondpage.dart';
import 'package:counter_provider_example/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> Counter()),
    ChangeNotifierProvider(create: (_)=> User()),
  ],
  child: const MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const Homepage(),
        '/second':(context) => const Second(),
        '/user':(context) => const Userpage(),
      },
    );
  }
}
