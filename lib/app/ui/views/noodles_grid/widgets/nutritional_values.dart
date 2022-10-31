import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/title_and_subtitle_button.dart';

class NutritionalValues extends StatelessWidget {
const NutritionalValues({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          TitleAndSubtitleButton(
            title: '380',
            subtitle: 'kcal',
            width: 60.0
          ),
          TitleAndSubtitleButton(
            title: '13,1',
            subtitle: 'proteins',
            width: 90.0
          ),
          TitleAndSubtitleButton(
            title: '20,2',
            subtitle: 'fats',
            width: 70.0
          ),
          TitleAndSubtitleButton(
            title: '35,6',
            subtitle: 'carbs',
            width: 70.0
          )
        ]
      )
    );
  }
}