import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/icon_in_circle_box.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/text_in_botton.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles_grid/widgets/meal_description.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles_grid/widgets/nutritional_values.dart';

class ModalBottomSheet extends StatelessWidget {
const ModalBottomSheet({ Key? key,
  required this.dishPrevisualization,
  required this.url,
  required this.mealDescription,
  required this.kcal,
  }) : super(key: key);

  final Widget dishPrevisualization;
  final String url;
  final String mealDescription;
  final String kcal;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: (){
      showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        context: context,
        builder: (BuildContext context){
          // ignore: sized_box_for_whitespace
          return Container(
              height: 650.0,
              child: Column(
                children: [
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(url),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  MealDescription(mealDescription),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 50.0,
                    width: 350.0,
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Nutritional value per plate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      )
                    )
                  ),
                  const NutritionalValues(),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconInCircleBox(
                        color: Colors.grey.shade100,
                        colorIcon: Colors.black,
                        icon: Icons.add,
                      ),
                      IconInCircleBox(
                        color: Colors.grey.shade100,
                        colorIcon: Colors.black,
                        icon: Icons.remove,
                      ),
                      GestureDetector(
                        onTap: (){
                          return Navigator.pop(context);
                        },
                        child: const TextInBotton(
                          // ignore: prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings
                          text: 'Add to cart ' + ' ' + ' \$650',
                          height: 55.0,
                          width: 200.0,
                          color: Colors.black,
                          colorText: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          );
        }
      );
    },
    child: dishPrevisualization
  );
}