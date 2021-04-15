import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';

class DataRangeContainer extends StatelessWidget {
  const DataRangeContainer({
    Key key,
    this.start,
    this.middle,
    this.end,
    this.title,
  }) : super(key: key);
  final bool start;
  final bool middle;
  final bool end;
  final title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(start ? Defaults.paddingbig : 0),
              bottomLeft: Radius.circular(start ? Defaults.paddingbig : 0),
              bottomRight: Radius.circular(end ? Defaults.paddingbig : 0),
              topRight: Radius.circular(end ? Defaults.paddingbig : 0),
            )),
        padding: EdgeInsets.symmetric(
            vertical: Defaults.paddingnormal,
            horizontal: Defaults.paddingmiddle),
        child: Text(title),
      ),
    );
  }
}
