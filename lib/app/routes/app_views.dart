import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/routes/app_routes.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_binding.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_view.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles/noodles_binding.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles/noodles_view.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles_grid/noodles_grid_binding.dart';
import 'package:restaurant_delivery_app/app/ui/views/noodles_grid/noodles_grid_view.dart';

abstract class AppViews {
  static final views = [
    GetPage(
      name: AppRoutes.HOME,
      page: ()=> const HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.NOODLES,
      page: ()=> const NoodlesView(), 
      binding: NoodlesBinding(),
    ),
    GetPage(
      name: AppRoutes.NOODLES_GRID,
      page: ()=> const NoodlesGridView(), 
      binding: NoodlesGridBinding(),
    ),
  ];
}