import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/dashboard/dashboard_datarange.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/dashboard/dashboard_top_right_info.dart';

class TopRightSide extends StatelessWidget {
  const TopRightSide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashBoardTopInfo(),
        Container(
          margin: EdgeInsets.only(top: Defaults.paddingmiddle),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(),
              ),
              DataRangeContainer(
                start: true,
                middle: false,
                end: false,
                title: 'Today',
              ),
              DataRangeContainer(
                start: false,
                middle: true,
                end: false,
                title: 'Week',
              ),
              DataRangeContainer(
                start: false,
                middle: true,
                end: false,
                title: 'Month',
              ),
              DataRangeContainer(
                start: false,
                middle: false,
                end: true,
                title: 'Year',
              ),
              Expanded(
                child: Divider(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
