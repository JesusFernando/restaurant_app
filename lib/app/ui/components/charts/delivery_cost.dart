import 'package:flutter/material.dart';

class DeliveryCost extends StatelessWidget {
const DeliveryCost({ Key? key,
  required this.price,
  }) : super(key: key);
  
  final String price;

  @override
  Widget build(BuildContext context) => Container(
    alignment: Alignment.topCenter,
    width: double.infinity,
    height: 50,
    child: ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      title: const Text("Delivery Cost"),
      trailing: Text(
        // ignore: unnecessary_brace_in_string_interps
        "\$${price}",
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
    ),
  );
}