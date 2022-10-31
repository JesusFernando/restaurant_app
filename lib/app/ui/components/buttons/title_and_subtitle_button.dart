import 'package:flutter/material.dart';

class TitleAndSubtitleButton extends StatelessWidget {
const TitleAndSubtitleButton({ Key? key,
  required this.title,
  required this.subtitle,
  required this.width,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final double width;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 70,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.transparent
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle)
      ),
    );
  }
}