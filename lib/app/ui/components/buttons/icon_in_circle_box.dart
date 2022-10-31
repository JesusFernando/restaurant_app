import 'package:flutter/material.dart';

class IconInCircleBox extends StatelessWidget {
const IconInCircleBox({ Key? key,
  required this.color,
  required this.colorIcon,
  required this.icon,
  }) : super(key: key);
  final Color color;
  final Color colorIcon;
  final IconData? icon;
  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.center,
      width: 65.0,
      height: 65.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: colorIcon),
    );
  }
}