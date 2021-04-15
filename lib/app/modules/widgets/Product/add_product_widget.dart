import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';
import 'package:flutter_shopping_admin/app/core/theme/app_theme.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/custome_button.dart';
import 'package:flutter_shopping_admin/app/modules/widgets/text_input_field.dart';

class AddProductWidget extends StatelessWidget {
  const AddProductWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height + 120,
          margin: EdgeInsets.all(Defaults.paddingnormal),
          padding: EdgeInsets.all(Defaults.paddingnormal),
          decoration: BoxDecoration(
              border: Border.all(color: Themes.lightcounterbtnColor)),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Themes.blueColor,
                      border: Border.all(color: Themes.lightcounterbtnColor)),
                  height: Defaults.paddingbig * 1.2,
                  padding: EdgeInsets.all(Defaults.paddingnormal),
                  child: Text(
                    'Add product',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )),
              Expanded(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: Defaults.paddingnormal,
                            top: Defaults.paddingnormal),
                        child: Text(
                          'Fill All (*) Marked',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).backgroundColor,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            child: Column(children: [
                              Text('Product Name'),
                              TextInputField(
                                controller: null,
                                hinttext: 'Product Name',
                              ),
                            ]),
                          ),
                          SizedBox(width: Defaults.paddingsmall),
                          Expanded(
                            child: Column(children: [
                              CustomeTextButton(label: 'Select'),
                              Image.asset(
                                'assets/images/shopmart.png',
                                width: 10,
                                fit: BoxFit.fitWidth,
                              )
                            ]),
                          )
                        ],
                      ),

                      // //product price and cutted price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(children: [
                              Text('Product price'),
                              TextInputField(
                                controller: null,
                                hinttext: 'Product Price',
                              ),
                            ]),
                          ),
                          SizedBox(width: Defaults.paddingsmall),
                          Expanded(
                            child: Column(children: [
                              Text('Cutted price'),
                              TextInputField(
                                controller: null,
                                hinttext: 'Cutted Price',
                              ),
                            ]),
                          )
                        ],
                      ),
                      Text('Product Description'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TextInputField(
                              controller: null,
                              hinttext: 'Product description',
                            ),
                          ),
                          CustomeTextButton(label: 'Add'),
                        ],
                      ),

                      ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Text('List 1');
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          itemCount: 2),
                      Row(
                        children: [
                          Text('Sale'),
                          SizedBox(width: Defaults.paddingsmall),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                          SizedBox(width: Defaults.paddingsmall),
                          Text('Discount'),
                          SizedBox(width: Defaults.paddingsmall),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                          Text('Product Stock'),
                          SizedBox(width: Defaults.paddingsmall),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: 'Discount Type',
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Theme.of(context).backgroundColor,
                                ),
                                iconSize: 30, //this inicrease the size
                                elevation: 16,
                                style: TextStyle(color: Colors.red),
                                underline: Container(),
                                onChanged: (String newValue) {},
                                items: [
                                  'Discount Type',
                                  'Flat',
                                  'Percentage'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Text('Discount Amount'),
                              CustomeInputField(
                                context: context,
                                hintText: 'Product Name',
                              ),
                            ],
                          )),
                        ],
                      ),

                      //product price and cutted price
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
