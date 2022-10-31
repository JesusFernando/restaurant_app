//Limpio
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/icon_navigation_bar.dart';

class AppBottomNavigationBar extends StatelessWidget {
const AppBottomNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          IconNavigationBar(
            icon: Icons.home_outlined,
            color: Colors.black54
          ),
          IconNavigationBar(
            icon: Icons.list_alt_outlined,
            color: Colors.black54
          ),
          IconNavigationBar(
            icon: Icons.shopping_basket_outlined,
            color: Colors.black54
          ),
          IconNavigationBar(
            icon: Icons.person_outlined,
            color: Colors.black54
          )
        ],
      )
    );
  }
}