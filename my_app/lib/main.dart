import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      home: const MyHomePage(title: 'Flutter App'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key, required String title});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          'Hey Flutter!',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 191, 252, 254),
    );
  }
}