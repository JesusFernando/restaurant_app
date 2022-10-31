//Limpio
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/charts/meal_previsualization.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles/noodles_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HorizontalListMeals extends StatefulWidget {
const HorizontalListMeals({ Key? key }) : super(key: key);

  @override
  State<HorizontalListMeals> createState() => HorizontalListMealsState();
}

class HorizontalListMealsState extends State<HorizontalListMeals> {
  static final itemController = ItemScrollController();

  @override
  Widget build(BuildContext context){
    List<Widget> cardMeal = [
          const MealPrevisualization(
            urlImage: 'https://dfwblobstorage.blob.core.windows.net/images/Recipe/PF641SALADX1132-wc.jpg',
            fastFoodType: 'eel & leaf',
            address: '360! Indian Way Crk',
            tag: 'leaf'
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NoodlesView())
              );
            },
            child: const MealPrevisualization(
              urlImage: 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/c4e7f587-e9e1-4953-b032-f58f82e91f4d/Derivates/4b8b814f-8562-4ad0-8db8-9939cb103685.jpg',
              fastFoodType: 'Noodles & Ramen',
              address: '812 Avenue, 153673',
              tag: 'ramen'
            ),
          ),
          const MealPrevisualization(
            urlImage: 'https://www.comedera.com/wp-content/uploads/2013/10/aji-de-gallina.jpg',
            fastFoodType: 'Tacos',
            address: '812 Avenue, 153673',
            tag: 'tacos'
          ),
        ];
    
    // ignore: sized_box_for_whitespace
    return Container(
      height: 279.0,
      width: 400.0,
      child: ScrollablePositionedList.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => cardMeal[index],
        itemScrollController: itemController,
      ),
    );
  }
}