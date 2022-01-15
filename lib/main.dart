import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Canny App'),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}
