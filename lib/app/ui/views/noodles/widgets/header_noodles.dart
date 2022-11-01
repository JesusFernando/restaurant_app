import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/buttons/icon_in_circle_box.dart';

class HeaderNoodles extends StatelessWidget {
const HeaderNoodles({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Center(
        child: Container(
          alignment: Alignment.topLeft,
          child: Hero(
            tag: "ramen",
            child: Image.network(
              "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/c4e7f587-e9e1-4953-b032-f58f82e91f4d/Derivates/4b8b814f-8562-4ad0-8db8-9939cb103685.jpg",  
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 20.0, right: 20.0),
        alignment: Alignment.topLeft,
        child: const IconInCircleBox(
          color: Colors.black87,
          colorIcon: Colors.white,
          icon: null,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0),
        alignment: Alignment.topRight,
        child: const IconInCircleBox(
          color: Colors.black87,
          colorIcon: Colors.white,
          icon: Icons.more_horiz,
        ),
      )
    ]
  );
}