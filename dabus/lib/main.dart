import 'package:dabus/screen_home.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      routes: {
        '/':(context) => CountHome(),
      },
      initialRoute: '/',
    );
  }
}

