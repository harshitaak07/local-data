import 'package:flutter/material.dart';
import 'package:localjson/HomePage.dart';

void main() {
  runApp(const localjson());
}

// ignore: camel_case_types
class localjson extends StatelessWidget {
  const localjson({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}



