import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/text_in_botton.dart';

class MealPrevisualization extends StatelessWidget {
const MealPrevisualization({ Key? key,
  required this.urlImage,
  required this.fastFoodType,
  required this.address,
  required this.tag,
  }) : super(key: key);

  final String urlImage;
  final String fastFoodType;
  final String address;
  final String tag;
  @override
  Widget build(BuildContext context) => Column(
    children: [
      Hero(
        tag: tag,
        child: Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 15.0, right: 15.0),
          height: 200,
          width: 355,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(urlImage),
            ),
          ),
          child: const TextInBotton(
            text: "30-45 min",
            height: 50,
            width: 100,
            color: Colors.white,
            colorText: Colors.black,
          )
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(right: 170.0),                
        height: 69,
        width: 170,
        child: RichText(
          text: TextSpan(
            // ignore: unnecessary_string_interpolations
            text: '''$fastFoodType''',
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(1, 0, 0, 0.5),
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: '''
                  $address''',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}