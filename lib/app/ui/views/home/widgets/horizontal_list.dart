//Limpio
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/icon_in_circle_box.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/interactive_button_icon_in_box.dart';

class HorizontalList extends StatelessWidget {
const HorizontalList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    // ignore: sized_box_for_whitespace
    return Container(
      width: 400.0,
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const IconInCircleBox(
            color: Color.fromARGB(204, 241, 239, 239),
            icon: Icons.tune,
            colorIcon: Colors.black
          ),
          InteractiveButtonIconInBox(
            name: "Noodles",
            icon: Icons.local_cafe_outlined,
          ),
          InteractiveButtonIconInBox(
            name: "Tacos",
            icon: Icons.bakery_dining_outlined,
          ),
          InteractiveButtonIconInBox(
            name: "Burguers",
            icon: Icons.lunch_dining_outlined,
          ),
          InteractiveButtonIconInBox(
            name: "Pizzas",
            icon: Icons.local_pizza_outlined,
          ),
          InteractiveButtonIconInBox(
            name: "Sweets",
            icon: Icons.cake_outlined,
          ),
        ],
      ),
    );
  }
}

