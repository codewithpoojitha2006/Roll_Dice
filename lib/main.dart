import 'package:flutter/material.dart';
import 'gradient_container.dart';
void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            [ Color.fromARGB(255, 197, 7, 83),
             Color.fromARGB(255, 255, 101, 153),
            Color.fromARGB(255, 241, 186, 205)])
      ),
    ),
  );
}

