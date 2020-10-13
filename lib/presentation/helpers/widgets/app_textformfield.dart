import 'package:flutter/material.dart';

import '../size_config.dart';
import '../styles/constants.dart';

class AppTextField extends StatelessWidget {
  final IconData suffixIcon;
  final String hintText;
  final bool obscureText;
  final Function validator;
  final Function onChanged;

  const AppTextField({
    Key key,
    this.suffixIcon,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      width: getProportionateScreenWidth(327),
      height: getProportionateScreenHeight(54),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(19)),
      ),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(17),
            vertical: getProportionateScreenHeight(17),
          ),
          border: InputBorder.none,
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: getProportionateScreenWidth(17)),
            child: Icon(
              suffixIcon,
              size: getProportionateScreenWidth(20),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
