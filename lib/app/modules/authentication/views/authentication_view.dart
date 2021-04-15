import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/Strings.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';
import 'package:flutter_shopping_admin/app/modules/home/views/home_view.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/custome_button.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/text_input_field.dart';

import 'package:get/get.dart';

import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/shopmart.png',
                    width: 200,
                    height: 200,
                  ),
                  CustomeInputField(
                    context: context,
                    hintText: Strings.email,
                    label: Strings.email,
                  ),
                  CustomeInputField(
                    context: context,
                    hintText: Strings.password,
                    label: Strings.password,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: CustomeTextButton(
                          label: 'Log In',
                          onPressed: () {
                            Get.to(() => HomeView());
                          },
                        ),
                      ),
                      SizedBox(
                        width: Defaults.paddingbig,
                      ),
                      Expanded(
                        child: CustomeTextButton(
                          label: 'Register',
                          onPressed: () {
                            Get.to(() => HomeView());
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
