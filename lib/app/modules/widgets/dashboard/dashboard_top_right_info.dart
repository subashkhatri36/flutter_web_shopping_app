import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/dashboard/dashboard_information_display_box.dart';

class DashBoardTopInfo extends StatelessWidget {
  const DashBoardTopInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InformationDisplayBox(
            title: 'Orders',
            numbers: 1234,
            icon: Icons.copy,
            bgColor: Colors.yellow[700],
            fontColor: Colors.white,
          ),
          InformationDisplayBox(
            title: 'Delivered',
            numbers: 1234,
            icon: Icons.money,
            bgColor: Colors.orange[700],
            fontColor: Colors.white,
          ),
          InformationDisplayBox(
            title: 'Pending Order',
            numbers: 1234,
            icon: Icons.money,
            bgColor: Theme.of(context).backgroundColor,
            fontColor: Colors.white,
          ),
          InformationDisplayBox(
            title: 'Total Users',
            numbers: 1234,
            icon: Icons.money,
            bgColor: Colors.blue[600],
            fontColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
