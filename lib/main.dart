import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

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

  Future getData() async {
    var url = Uri.https('samples.openweathermap.org', '/data/2.5/weather', {
      'lat': '35',
      'lon': '-6',
      'appid': '91b54cb3ec1afcb7a8fd49835a557d32'
    });
     var response = await http.get(url);
   print(response.statusCode);
  }


  @override
  void initState() {
    super.initState();
    getData();
  }

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
