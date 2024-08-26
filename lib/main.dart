import 'package:flutter/material.dart';
import 'package:flutter_web_basics/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: 'Plus Jakarta Sans')),
      home: HomeView(),
    );
  }
}
