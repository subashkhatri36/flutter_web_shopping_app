import 'package:flutter/cupertino.dart';
import 'package:flutter_shopping_admin/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter_shopping_admin/app/modules/product/views/product_view.dart';

Widget mappingMenu(int listno) {
  switch (listno) {
    case 0:
      return DashboardView();
    case 1:
      return ProductView();
      break;
    default:
      return Container();
      break;
  }
}
