import 'package:flutter/material.dart';
import 'package:lab2/screens/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Colors.purple;
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const Home(color: primaryColor),
    );
  }
}