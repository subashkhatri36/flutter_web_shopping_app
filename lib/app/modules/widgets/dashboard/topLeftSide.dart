import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';
import 'package:flutter_shopping_admin/app/core/theme/app_theme.dart';

class TopLeftSide extends StatelessWidget {
  const TopLeftSide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(Defaults.paddingnormal),
          decoration: BoxDecoration(
            border: Border.all(color: Themes.blueColor),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.height,
                height: Defaults.paddingbig * 1.3,
                color: Themes.blueColor,
                padding: EdgeInsets.all(Defaults.paddingsmall),
                child: Text(
                  'Order Details',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Text('Info1');
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 2),
              Text('Info1'),
              Text('Info2')
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(Defaults.paddingnormal),
          decoration: BoxDecoration(
            border: Border.all(color: Themes.blueColor),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.height,
                height: Defaults.paddingbig * 1.3,
                color: Themes.blueColor,
                padding: EdgeInsets.all(Defaults.paddingsmall),
                child: Text(
                  'Order Details',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
              Text('Info1'),
              Text('Info2')
            ],
          ),
        ),
      ],
    );
  }
}
