import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class ToRollDice extends StatefulWidget {
  const ToRollDice({super.key});

  @override
  State<ToRollDice> createState() => _ToRollDiceState();
}

class _ToRollDiceState extends State<ToRollDice> {
  var currentDiceNumber = 2;

  void activateDice() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceNumber.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: activateDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll the Dice!'),
        ),
      ],
    );
  }
}
