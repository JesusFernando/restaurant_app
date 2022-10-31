import 'package:flutter/material.dart';

class ButtonIconInBox extends StatelessWidget {
const ButtonIconInBox({ Key? key,
  required this.name,
  required this.icon,
  this.width = 154.0,
  this.colorIcon = const Color.fromARGB(255, 0, 0, 1),
  this.colorContainer = const Color.fromARGB(204, 241, 239, 239),
  this.colorText = Colors.black,
  }) : super(key: key);
  final String name;
  final IconData icon;
  final double width;
  final Color colorIcon;
  final Color colorContainer;
  final Color colorText;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      alignment: Alignment.center,
      height: 60.0,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: colorContainer,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          size: 35.0,
          color: colorIcon,
        ),
        title: Text(
          name,
          style: TextStyle(
            color: colorText,
          ),
        ),
      )
    );
  }
}