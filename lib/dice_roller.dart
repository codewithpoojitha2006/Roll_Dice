import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoller = 2;
  void RollDice() {
    setState(() {
      diceRoller = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assets/images/dice-3.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceRoller.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: RollDice,
          style: TextButton.styleFrom(
            //padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 20),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
