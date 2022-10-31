// Limpio
import 'package:flutter/material.dart';

class DeliveryTime extends StatelessWidget {
const DeliveryTime({ Key? key,
  required this.deliveryTime,
   }) : super(key: key);
  final String deliveryTime;
  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 40,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        title: const Text("Delivery Time"),
        trailing: Text(
          // ignore: unnecessary_string_interpolations
          "$deliveryTime",
          style: const TextStyle(
            fontSize: 16.0,
          )
        ),
      ),
    );
  }
}