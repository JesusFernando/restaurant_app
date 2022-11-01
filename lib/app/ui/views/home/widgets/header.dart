import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/header_app_bar.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/question_text.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/search_bar.dart';

class Header extends StatelessWidget {
const Header({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      width: double.infinity,
      height: 340.0,
      padding: const EdgeInsets.only(
        top: 60.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0)
        ),
        gradient: LinearGradient(
          colors: [
            Colors.deepOrange,
            Colors.yellow
          ]
        )
      ),
      child: Column(
        children: const [
          HeaderAppBar(),
          SizedBox(height: 40.0),
          QuestionText(),
          SizedBox(height:20.0),
          SearchBar(),
        ],
      ),
    );
}