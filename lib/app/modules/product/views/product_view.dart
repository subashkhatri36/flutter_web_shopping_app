import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/Product/add_product_widget.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AddProductWidget()

        //   Column(children: [
        //     Expanded(
        //       flex: 7,
        //       child: Container(
        //         child: Row(
        //           children: [
        //             Expanded(flex: 6, child: AddProductWidget()),
        //             Expanded(flex: 4, child: ViewProductWidget()),
        //           ],
        //         ),
        //       ),
        //     ),
        //     Expanded(flex: 3, child: AllProductViewWidget())
        //   ]),
        );
  }
}

class AllProductViewWidget extends StatelessWidget {
  const AllProductViewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text('List')]));
  }
}

class ViewProductWidget extends StatelessWidget {
  const ViewProductWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('View');
  }
}
