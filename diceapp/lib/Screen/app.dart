import 'package:diceapp/Screen/dice.dart';
import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget{
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: "Dice App",
      debugShowCheckedModeBanner: false,
      home: DiceScreen(),
    );
  }
}