import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

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
  String data = "(no data)";

  String get serverUrl =>
      const String.fromEnvironment('SERVER_URL', defaultValue: '');

  Future<http.Response> getData() {
    return http.get(Uri.parse('$serverUrl/api/auth/is-authenticated'));
  }

  void action() async {
    final http.Response response = await getData();

    setState(() {
      data = response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text(serverUrl),
        Text(data),
        TextButton(onPressed: action, child: const Text("get data"))
      ],
    ));
  }
}
