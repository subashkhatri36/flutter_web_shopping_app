import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/dashboard/topLeftSide.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/dashboard/top_righ_side.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        //First Row Basic Information
        Row(
          children: [
            Expanded(flex: 3, child: TopLeftSide()),
            SizedBox(
              width: Defaults.paddingsmall,
            ),
            Expanded(flex: 6, child: TopRightSide())
          ],
        )
      ],
    ));
  }
}
