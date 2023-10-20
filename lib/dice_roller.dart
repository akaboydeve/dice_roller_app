import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-1.png';
  String result = 'Tap Roll Dice to Roll the DICE';

  void rollDice() {
    int diceFace = Random().nextInt(6) + 1;

    setState(() {
      diceImage = 'assets/images/dice-$diceFace.png';
      result = 'Yea You got $diceFace';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 40,
          child: Center(
            child: Text(
              result,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        Image.asset(
          diceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
