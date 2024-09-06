import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String get mode =>
      const String.fromEnvironment('MODE', defaultValue: '(no mode defined)');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [Text(mode)],
    ));
  }
}
