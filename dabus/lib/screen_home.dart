import 'package:flutter/material.dart';

class CountHome extends StatefulWidget {
  CountHome({Key? key}) : super(key: key);

  var counter=0;

  @override
  _CountHomeState createState() => _CountHomeState();
}

class _CountHomeState extends State<CountHome> {

  var counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter Demo Home Page")),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          counter++;
        });
      },child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(children: [
         Center(child: Text("The number of times you Clicked the button is:")),
         Center(child: Text('$counter')),
        ],
        ),
      ),
    );
  }
}