import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab2/components/layout.dart';
import '../components/list_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}): super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void _onIncrement() {

    // Invoke the set state method to notify flutter regarding state changers.
    setState(() {
      count++;
    });
    print("Incrementing the value");
  }

  @override
  Widget build(BuildContext context){
    return Layout(
      title: "Home",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: _onIncrement,
            child: Text("Count is $count"),
          ),
          ListItem(content: "Content_1"),
          ListItem(content: "Content_2"),
          ElevatedButton(onPressed: null, child: Text("About")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _onIncrement,
      ),
    );
  }
}