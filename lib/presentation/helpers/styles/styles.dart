import 'package:flutter/material.dart';

import '../size_config.dart';
import 'constants.dart';

TextStyle get navbarTitle => TextStyle(
      color: Colors.black,
      fontSize: getProportionateScreenWidth(24.0),
      fontWeight: FontWeight.w700,
    );

BoxShadow get appBoxShadow => BoxShadow(
      color: kPrimaryColor.withOpacity(getProportionateScreenWidth(0.25)),
      blurRadius: getProportionateScreenWidth(50),
      spreadRadius: getProportionateScreenWidth(15),
    );
