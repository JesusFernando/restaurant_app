import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/dish_previsualization.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/modal_botton_sheet.dart';

class MealsGrid extends StatelessWidget {
const MealsGrid({ Key? key }) : super(key: key);

  @override
  // ignore: sized_box_for_whitespace
  Widget build(BuildContext context) => Container(
    height: 668.0,
    width: double.infinity,
    child: GridView.count(
      childAspectRatio: 0.7,
      crossAxisCount: 2,
      children: const [
        ModalBottomSheet(
          dishPrevisualization: DishPrevisualization(
            url: 'https://images.hola.com/imagenes/cocina/recetas/20191017151958/ramen-pollo-huevo-cebollino-soja/0-734-730/ramen-adobe-m.jpg',
            descriptionMeal: "Classic ramen with chicken and egg",
            price: "6,50",
            marginLeft: 0.0,
          ),
          url: 'https://images.hola.com/imagenes/cocina/recetas/20191017151958/ramen-pollo-huevo-cebollino-soja/0-734-730/ramen-adobe-m.jpg',
          mealDescription: 'Wheat noodles served in a meat-base broth,flavored with say sauce and toppings (sliced park,nori, menma and scallions)',
          kcal: '380'
        ),
        DishPrevisualization(
          url: 'https://www.elmundoeats.com/wp-content/uploads/2021/02/FP-Quick-30-minutes-chicken-ramen.jpg',
          descriptionMeal: "Classic ramen with pork and egg",
          price: "4,99",
          marginLeft: 0.0,
        ),
        DishPrevisualization(
          url: 'https://glebekitchen.com/wp-content/uploads/2017/04/tonkotsuramenfront.jpg',
          descriptionMeal: "Tonkatsu ramen-park bone broth",
          price: "13,99",
          marginLeft: 0.0,
        ),
        DishPrevisualization(
          url: 'https://www.crowdedkitchen.com/wp-content/uploads/2020/08/vegan-miso-soup.jpg',
          descriptionMeal: "Miso soup-soup with miso, tofu and dashi broth",
          price: "8,00",
          marginLeft: 0.0,
        ),
        DishPrevisualization(
          url: 'https://woonheng.com/wp-content/uploads/2020/10/Curry-Laksa-500x500.jpg',
          descriptionMeal: "Curry mee-laksa soup with spicy rice noodle",
          price: "10,00",
          marginLeft: 0.0,
        ),
        DishPrevisualization(
          url: 'https://img.taste.com.au/SGF3qTIo/taste/2016/11/50-slow-cooker-dinners-under-500-calories-108488-2.jpeg',
          descriptionMeal: "Pho Bo-rice noodle soup with beef, herbs and chili",
          price: "9,99",
          marginLeft: 0.0,
        ),
      ],
    ),
  );
}