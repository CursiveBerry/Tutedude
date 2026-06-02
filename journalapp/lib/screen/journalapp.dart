import 'package:flutter/material.dart';
import 'package:journalapp/screen/homeapp.dart';

class JournalApp extends StatelessWidget{
  const JournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Journal",
      debugShowCheckedModeBanner: false,
      home: JournalHomePage(),
    );
  }
}