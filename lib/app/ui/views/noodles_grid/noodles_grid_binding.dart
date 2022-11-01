import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles_grid/noodles_grid_controller.dart';

class NoodlesGridBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoodlesGridController());
  }
}