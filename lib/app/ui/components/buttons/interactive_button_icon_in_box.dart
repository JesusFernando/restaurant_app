import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/button_icon_in_box.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/horizontal_list_meals.dart';

class InteractiveButtonIconInBox extends StatelessWidget {
InteractiveButtonIconInBox({ Key? key,
  required this.name,
  required this.icon,
  }) : super(key: key);
  final String name;
  final IconData icon;
  final dynamic color =  const Color.fromRGBO(241, 239, 239, 0.8).obs;
  final dynamic colorIcon = const Color.fromARGB(255, 0, 0, 1).obs;
  final dynamic colorText = Colors.black.obs;

  Future scrollToItem() async {
    HorizontalListMealsState.itemController.scrollTo(
      index: 1,
      duration: const Duration(seconds: 1)
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        color.value = const Color.fromARGB(255, 0, 0, 1);
        colorIcon.value = const Color.fromARGB(255, 255, 255, 255);
        colorText.value = Colors.white;
        scrollToItem();
      },
      child: Obx(() =>ButtonIconInBox(
          name: name,
          icon: icon,
          colorIcon: colorIcon.value,
          colorContainer: color!.value,
          colorText: colorText!.value
        ),
      ),
    );
  }
}