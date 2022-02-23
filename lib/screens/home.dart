import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}): super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void onIncrement() {
    count++;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is a statefulWidget"),
      ),
        body: Center(
          child: Text("Count is $count"),
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          onIncrement(); // Calling the onIncrement method.
        },
      ),
    );
  }
}