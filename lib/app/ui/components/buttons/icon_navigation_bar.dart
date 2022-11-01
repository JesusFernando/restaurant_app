import 'package:flutter/material.dart';

class IconNavigationBar extends StatelessWidget {
const IconNavigationBar({ Key? key,
  required this.icon,
  required this.color,
  }) : super(key: key);
  
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) => IconButton(
    icon: Icon(
      icon,
      color: color,
      size: 35.0,
    ),
    onPressed: (){},
  );
}