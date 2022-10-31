//Limpio
import 'package:flutter/material.dart';

class Slogan extends StatelessWidget {
const Slogan({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(left: 26.0),
      alignment: Alignment.centerLeft,
      child: const Text(
        "Fastest delivery time",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w500,
        )
      ),
    );
  }
}