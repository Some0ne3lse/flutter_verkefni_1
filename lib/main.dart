import 'package:flutter/material.dart';
import 'package:flutter_verkefni_1/gradient_background_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientBackGroundContainer(Colors.green, Colors.greenAccent),
      ),
    ),
  );
}
