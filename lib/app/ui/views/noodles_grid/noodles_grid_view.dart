import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/three_bottons.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles_grid/noodles_grid_controller.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles_grid/widgets/meals_grid.dart';

class NoodlesGridView extends StatelessWidget {
const NoodlesGridView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<NoodlesGridController>(
    builder: (controller) => Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Noodles & Ramen",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: const [
          ThreeBottons(),
          SizedBox(height: 20.0),
          MealsGrid(),
        ],
      ),
    ),
  );
}