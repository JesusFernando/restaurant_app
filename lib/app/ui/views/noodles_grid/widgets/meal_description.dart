import 'package:flutter/material.dart';

class MealDescription extends StatelessWidget {
const MealDescription(
  this.mealDescription,
  { Key? key
  }) : super(key: key);

  final String mealDescription;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 50.0,
      width: 350.0,
      alignment: Alignment.center,
      child: Text(
          mealDescription,
          style: const TextStyle(
          fontSize: 15.0,
        )
      ),
    );
  }
}