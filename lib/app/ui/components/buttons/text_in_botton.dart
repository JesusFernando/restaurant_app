import 'package:flutter/material.dart';

class TextInBotton extends StatelessWidget {
const TextInBotton({ Key? key,
  required this.text,
  required this.height,
  required this.width,
  required this.colorText,
  this.color,
  }) : super(key: key);

  final String text;
  final double height;
  final double width;
  final Color? color;
  final Color colorText;

  @override
  Widget build(BuildContext context) => Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 10.0, top: 10.0),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),  
        color: color,
      ),
      child: Text(
        // ignore: unnecessary_brace_in_string_interps, unnecessary_string_interpolations
        "${text}",
        style: TextStyle(
          color: colorText,
        ),
      ),
    );
}