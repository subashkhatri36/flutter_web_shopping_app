import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/text_input_field.dart';

AppBar buildAppBar(
  BuildContext context,
) {
  // final cart = Get.find<CartController>();
  // final notification = Get.find<NotificationController>();
  return AppBar(
    actions: [
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: Defaults.paddingnormal),
            Image.asset(
              'assets/images/shopmart.png',
              width: 50,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: Defaults.paddingbig),
                width: Defaults.paddingbig * 20,
                child: CustomeInputField(
                  icon: Icons.search,
                  iconColor: Theme.of(context).primaryColor,
                  label: 'Search',
                  context: context,
                  hintText: 'Search',
                ),
              ),
            ),
            SizedBox(
              width: Defaults.paddingsmall,
            ),
            Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(
                  width: Defaults.paddingsmall,
                ),
                Icon(Icons.shopping_cart),
              ],
            ),
            SizedBox(
              width: Defaults.paddingsmall,
            ),
          ],
        ),
      )
    ],
    backgroundColor: Theme.of(context).backgroundColor,
  );
}

// class Notification extends StatefulWidget {
//   final int length;
//   const Notification({
//     Key key,
//     this.length,
//   }) : super(key: key);

//   @override
//   _NotificationState createState() => _NotificationState();
// }

// class _NotificationState extends State<Notification> {
//   @override
//   Widget build(BuildContext context) {
//     return widget.length > 0
//         ? IconWithNotification(
//             icon: Icons.notifications,
//             notification: widget.length.toString(),
//           )
//         : Icon(
//             Icons.notifications,
//             size: 30,
//           );
//   }
// }

// class ShoppingCart extends StatefulWidget {
//   final int length;
//   const ShoppingCart({
//     Key key,
//     this.length,
//   }) : super(key: key);

//   @override
//   _ShoppingCartState createState() => _ShoppingCartState();
// }

// class _ShoppingCartState extends State<ShoppingCart> {
//   @override
//   Widget build(BuildContext context) {
//     return widget.length > 0
//         ? IconWithNotification(
//             icon: Icons.shopping_cart,
//             notification: widget.length.toString(),
//           )
//         : Icon(
//             Icons.shopping_cart,
//             size: 30,
//           );
//   }
// }
