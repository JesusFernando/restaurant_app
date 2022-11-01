import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles/noodles_controller.dart';

class NoodlesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoodlesController());
  }
}