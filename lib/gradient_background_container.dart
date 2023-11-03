import 'package:flutter_verkefni_1/to_roll_dice.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomLeft;

class GradientBackGroundContainer extends StatelessWidget {
  const GradientBackGroundContainer(
    this.firstColor,
    this.secondColor, {
    super.key,
  });

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secondColor,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: ToRollDice(),
      ),
    );
  }
}
