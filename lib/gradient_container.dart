import 'package:flutter/material.dart';
import 'dice_roller.dart';

var startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
 const  GradientContainer(this.colors, {super.key});
  //GradientContainer({key}) :super(key: key);
  final List<Color> colors;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
