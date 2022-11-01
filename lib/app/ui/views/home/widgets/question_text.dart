import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
const QuestionText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => const Text(
    "Lookin' for something special?",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30.0
    ),
  );
}