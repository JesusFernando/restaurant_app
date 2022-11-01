import 'package:flutter/material.dart';

class TitleDish extends StatelessWidget {
const TitleDish({ Key? key,
  required this.nameDish,
  required this.address,
  }) : super(key: key);

  final String nameDish;
  final String address;

  @override
  Widget build(BuildContext context) => Container(
    alignment: Alignment.centerLeft,
    margin: const EdgeInsets.only(right: 90.0, top: 30.0),                
    height: 69,
    width: 250,
    child: RichText(
      text: TextSpan(
        // ignore: unnecessary_string_interpolations, unnecessary_brace_in_string_interps
        text: '''${nameDish}''',
        style: const TextStyle(
          fontSize: 25,
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
          ),
        ],
      ),
    ),
  );
}