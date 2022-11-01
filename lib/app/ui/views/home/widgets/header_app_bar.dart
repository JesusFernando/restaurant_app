import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/icon_in_circle_box.dart';

class HeaderAppBar extends StatelessWidget {
const HeaderAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const IconInCircleBox(
        color: Colors.black,
        icon: Icons.keyboard_command_key,
        colorIcon: Colors.white
      ),
      // ignore: sized_box_for_whitespace
      Container(
        width:70.0,
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'deliver to ',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: 'Home',
                style: TextStyle(
                  color:Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      const CircleAvatar(
        radius: 29,
        backgroundImage: NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPehM8KbxPL36FHXLC3-mTRB1ngtcTU42wzw&usqp=CAU',
        ),
      ),
    ],
  );
}