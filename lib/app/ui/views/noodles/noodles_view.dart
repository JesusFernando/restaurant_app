import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles/noodles_controller.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles/widgets/content_noodles.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles/widgets/header_noodles.dart';


class NoodlesView extends StatelessWidget {
const NoodlesView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder<NoodlesController>(
      builder: (controller) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          title: null,
          backgroundColor: Colors.transparent,
        ),
        body:Stack(
          children: const [
            HeaderNoodles(),
            ContentNoodles(),
          ],
        ),
      ),
    );
  }
}