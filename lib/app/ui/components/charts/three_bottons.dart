import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/text_in_botton.dart';

class ThreeBottons extends StatelessWidget {
const ThreeBottons({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:[
      TextInBotton(
        text: "Classic",
        height: 60.0,
        width: 100.0,
        color: Colors.grey[200],
        colorText: Colors.black,
      ),
      const TextInBotton(
        text: "Experimental",
        height: 60.0,
        width: 120.0,
        color: Colors.white,
        colorText: Colors.black,
      ),
      const TextInBotton(
        text: "Speciality",
        height: 60.0,
        width: 100.0,
        color: Colors.white,
        colorText: Colors.black,
      ),
    ],
  );
}