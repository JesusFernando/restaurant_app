//Limpio
import 'package:flutter/material.dart';

class DishPrevisualization extends StatelessWidget {
const DishPrevisualization({ Key? key,
  required this.url,
  required this.descriptionMeal,
  required this.price,
  required this.marginLeft,
  }) : super(key: key);

  final String url;
  final String descriptionMeal;
  final String price;
  final double marginLeft;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: marginLeft),
          height: 150.0,
          width: 170.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.fill,
            )
          )
        ),
        const SizedBox(height: 10.0),
        // ignore: sized_box_for_whitespace
        Container(
          height: 40.0,
          width: 170.0,
          child: Text(descriptionMeal),
        ),
        Container(
          alignment: Alignment.center,
          width: 160.0,
          height: 50.0,
          // ignore: unnecessary_brace_in_string_interps, sort_child_properties_last
          child: Text("\$${price}"),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.grey[200]
          )
        ),
      ],
    );
  }
}