import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/list_item.dart';

class Home extends StatefulWidget {
  final Color color;
  const Home({Key? key, required this.color}): super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is a statefulWidget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: _onIncrement,
            child: Text("Count is $count"),
          ),
          ListItem(content: "Content_1", color: widget.color,),
          ListItem(content: "Content_2", color: widget.color),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _onIncrement,
      ),
    );
  }
}