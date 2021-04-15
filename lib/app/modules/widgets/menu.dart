import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';
import 'package:flutter_shopping_admin/app/data/model/menu_model.dart';
import 'package:flutter_shopping_admin/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<HomeController>();
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(Defaults.paddingsmall),
        margin: EdgeInsets.only(bottom: Defaults.paddingbig),
        width: Defaults.paddingbig * 4,
        height: MediaQuery.of(context).size.height * .99,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            border:
                Border.all(color: Theme.of(context).backgroundColor, width: 1),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(Defaults.paddingbig + 20))),
        child: Obx(() => menuController.ismenuloaded.isTrue
            ? CircularProgressIndicator()
            : ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  MenuModel menuModel = menuController.menumodelList[index];
                  return InkWell(
                    onTap: () {
                      if (index != menuController.currentpage.value) {
                        menuController.currentpage.value = index;
                      }
                    },
                    child: MenuItems(
                        icon: menuModel.iconData, text: menuModel.mentTitle),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.white,
                  );
                },
                itemCount: menuController.menumodelList.length)),
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({
    Key key,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Defaults.paddingsmall, vertical: Defaults.paddingsmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Theme.of(context).primaryColor,
            size: Defaults.paddingbig,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: Defaults.fontmiddle - 3,
                color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
