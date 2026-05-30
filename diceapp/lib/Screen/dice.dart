import 'dart:math';
import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget{
    const DiceScreen({super.key});

    @override
    State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen>{

  int diceNumber = 1;
  void rollDice(){
    setState(() {
      diceNumber = Random().nextInt(6)+1;
      print(diceNumber);
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            title: const Text("Dice App",),
            backgroundColor: Color(0xFFD4A373),
        ),
        backgroundColor: Color(0xfffff8e7),
        body: 
        Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Image.asset(
                      'lib/DiceImages/Dice$diceNumber.png',
                      width: 150,
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xfffaedcd),
                            foregroundColor: Color(0xFFD4A373),
                        ),
                        onPressed: rollDice,
                        child: const Text(
                            "Roll",
                            style: TextStyle(fontSize: 20),
                        ),
                    )
                ],
            ),
        ),
    );
  }
}