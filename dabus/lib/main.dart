// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: Home(),
    );
  }
}

String name="This is the Home Page of Dabus App, Hi";

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("DaBus"),
        ),
        backgroundColor: Colors.black87,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[ 
                SizedBox(
                child:  Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                  onPressed: (){
                    print("Button Is Pressed");
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(onPressed: (){
                  print("Elevated button clicked");
                },
                 child: const Text("Register"),
                 ),
                ],
              )
            ]),
          ),
        ),
      )
    );
  }
}