import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';

class InformationDisplayBox extends StatelessWidget {
  const InformationDisplayBox({
    Key key,
    this.title,
    this.numbers,
    this.icon,
    this.bgColor = Colors.white,
    this.fontColor = Colors.black,
  }) : super(key: key);
  final String title;
  final double numbers;
  final IconData icon;
  final Color bgColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Defaults.paddingbig * 4,
        width: Defaults.paddingbig * 10,
        decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: Colors.black26),
            borderRadius:
                BorderRadius.all(Radius.circular(Defaults.paddingnormal))),
        margin: EdgeInsets.all(Defaults.paddingsmall),
        padding: EdgeInsets.symmetric(
            vertical: Defaults.paddingsmall,
            horizontal: Defaults.paddingnormal),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: fontColor,
                      fontSize: Defaults.fontbig,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  numbers.toString(),
                  style: TextStyle(
                      color: fontColor,
                      fontSize: Defaults.fontmiddle,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            CircleAvatar(
                backgroundColor: fontColor,
                child: Icon(
                  icon,
                  color: bgColor,
                ))
          ],
        ));
  }
}
