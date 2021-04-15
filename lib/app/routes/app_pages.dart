import 'package:flutter_shopping_admin/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:flutter_shopping_admin/app/modules/authentication/views/authentication_view.dart';
import 'package:flutter_shopping_admin/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_shopping_admin/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter_shopping_admin/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_shopping_admin/app/modules/home/views/home_view.dart';
import 'package:flutter_shopping_admin/app/modules/product/bindings/product_binding.dart';
import 'package:flutter_shopping_admin/app/modules/product/views/product_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.AUTHENTICATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
  ];
}
