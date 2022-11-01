import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/routes/app_routes.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/delivery_cost.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/delivery_time.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/dish_previsualization.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/three_bottons.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/title_dish.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles_grid/noodles_grid_view.dart';

class ContentNoodles extends StatelessWidget {
const ContentNoodles({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 280.0),
      width: double.infinity,
      height: 560.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
      ),
      child: Column(//Se puede reutilizar
        children: [
          const TitleDish(
            nameDish: "Noodles & Ramen",
            address: "812 Avenue, 153673"
          ),
          const DeliveryTime(deliveryTime: "30-45 minutes",),
          const DeliveryCost(price: "5-10",),
          const ThreeBottons(),
          const SizedBox(height: 15.0),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(
                context,
                AppRoutes.NOODLES_GRID
              );
            },
            child: Row(
              children: const [
                DishPrevisualization(
                  url: 'https://images.hola.com/imagenes/cocina/recetas/20191017151958/ramen-pollo-huevo-cebollino-soja/0-734-730/ramen-adobe-m.jpg',
                  descriptionMeal: "Classic ramen with chicken and egg",
                  price: "6,50",
                  marginLeft: 15.0,
                ),
                SizedBox(height:10.0),
                DishPrevisualization(
                  url: 'https://www.elmundoeats.com/wp-content/uploads/2021/02/FP-Quick-30-minutes-chicken-ramen.jpg',
                  descriptionMeal: "Classic ramen with pork and egg",
                  price: "4,99",
                  marginLeft: 15.0,
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}