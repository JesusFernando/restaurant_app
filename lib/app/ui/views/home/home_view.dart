//Limpio
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_controller.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/app_botton_navigation_bar.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/header.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/horizontal_list.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/horizontal_list_meals.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/slogan.dart';

class HomeView extends StatelessWidget {
const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder<HomeViewController>(
      init: HomeViewController(),
      builder: (controller) => Scaffold(
        body: Column(
          children: const [
            Header(),
            SizedBox(height: 20.0),
            HorizontalList(),
            SizedBox(height: 15.0),
            Slogan(),
            SizedBox(height: 15.0),
            HorizontalListMeals(),
            AppBottomNavigationBar(),
            // HorizontalListView(),
            // VerticalListView(),
          ],
        )
      ),
    );
  }
}