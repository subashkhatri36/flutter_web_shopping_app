import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/data/model/menu_model.dart';

abstract class MenuRepo {
  Future<Either<String, List<MenuModel>>> loadMenu();
}

class MenuRepository implements MenuRepo {
  @override
  Future<Either<String, List<MenuModel>>> loadMenu() async {
    List<MenuModel> menudata = [
      MenuModel(mentTitle: 'Dashboard', iconData: Icons.dashboard),
      MenuModel(mentTitle: 'Product', iconData: Icons.shopping_cart),
      MenuModel(mentTitle: 'Category', iconData: Icons.tag),
      MenuModel(mentTitle: 'Order', iconData: Icons.shopping_bag),
      MenuModel(mentTitle: 'Sales', iconData: Icons.report),
      MenuModel(mentTitle: 'Users', iconData: Icons.account_box),
      MenuModel(mentTitle: 'Chat', iconData: Icons.message),
      MenuModel(mentTitle: 'Settings', iconData: Icons.settings),
      MenuModel(mentTitle: 'Privacy Policy', iconData: Icons.question_answer),
    ];
    return right(menudata);
  }
}
