import 'package:flutter/material.dart';
import 'package:flutter_shopping_admin/app/core/constant/defaults.dart';

class CustomeInputField extends StatelessWidget {
  const CustomeInputField(
      {@required this.context,
      this.label,
      this.hintText,
      this.obscureText,
      this.textInputType,
      this.icon,
      this.validator,
      this.onFieldSubmitted,
      this.onChanged,
      this.iconColor = Colors.black,
      this.textFieldColor,
      this.controller,
      this.borderColor = Colors.white,
      this.autovalidateMode});

  final IconData icon;
  final String hintText;
  final TextInputType textInputType;
  final Color textFieldColor, iconColor, borderColor;
  final bool obscureText;
  final validator;
  final ValueChanged<String> onFieldSubmitted;
  final ValueChanged<String> onChanged;
  final String label;
  final controller;
  final autovalidateMode;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return (new Container(
      margin: new EdgeInsets.only(
          bottom: Defaults.paddingnormal, top: Defaults.paddingnormal),
      child: TextFormField(
        controller: controller ?? null,
        autovalidateMode:
            autovalidateMode ?? AutovalidateMode.onUserInteraction,
        style: TextStyle(color: Theme.of(context).primaryColor),
        decoration: new InputDecoration(
          //contentPadding: EdgeInsets.all(default),
          border: buildOutlineInputBorder(context),
          enabledBorder: buildOutlineInputBorder(context),

          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow[300], width: 1),
              borderRadius: BorderRadius.circular(Defaults.fontnormal)),
          prefixIcon: icon != null
              ? new Icon(
                  icon,
                  color: iconColor,
                )
              : null,
          //labelText: label ?? "",
          labelStyle: TextStyle(color: Colors.white),
          hintText: hintText ?? "",
          errorStyle: TextStyle(color: Colors.white),
          hintStyle: const TextStyle(
              color: Colors.white, fontSize: Defaults.fontnormal),
        ),
        validator: validator ?? null,
        onFieldSubmitted: onFieldSubmitted ?? null,
        onChanged: onChanged ?? null,
        obscureText: obscureText ?? false,
        keyboardType: textInputType ?? TextInputType.text,
      ),
    ));
  }

  OutlineInputBorder buildOutlineInputBorder(BuildContext context) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 1),
        borderRadius: BorderRadius.circular(Defaults.fontnormal));
  }
}

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key key,
    @required this.controller,
    this.texttype,
    //@required this.lable,
    @required this.hinttext,
    this.validator,
    this.onFieldSubmitted,
    this.icon,
    this.errortext,
    this.focus = false,
  }) : super(key: key);

  final controller;
  final texttype;
  final String hinttext;
  final validator;
  final onFieldSubmitted;
  final IconData icon;
  final String errortext;
  final bool focus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.black),
      keyboardType: texttype ?? TextInputType.text,
      validator: validator ?? null,
      onFieldSubmitted: onFieldSubmitted ?? null,
      autofocus: focus,
      decoration: new InputDecoration(
        prefixIcon: icon != null
            ? new Icon(
                icon,
                color: Colors.black54,
              )
            : null,
        //contentPadding: EdgeInsets.all(default),
        border: newbuildOutlineInputBorder(context),
        enabledBorder: newbuildOutlineInputBorder(context),
        focusColor: Colors.black54,

        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow[300], width: 1),
            borderRadius: BorderRadius.circular(Defaults.fontnormal)),

        //labelText: lable,
        labelStyle: TextStyle(color: Colors.black45),
        hintText: hinttext,
        errorStyle: TextStyle(color: Colors.red),
        errorText: errortext,
        hintStyle:
            const TextStyle(color: Colors.grey, fontSize: Defaults.fontnormal),
      ),
    );
  }
}

OutlineInputBorder newbuildOutlineInputBorder(BuildContext context) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black54, width: 1),
      borderRadius: BorderRadius.circular(Defaults.fontnormal));
}
