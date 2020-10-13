import 'package:flutter/material.dart';

import '../size_config.dart';
import '../styles/constants.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(19)),
          boxShadow: [
            BoxShadow(
              color:
                  kPrimaryColor.withOpacity(getProportionateScreenWidth(0.25)),
              blurRadius: getProportionateScreenWidth(50),
              spreadRadius: getProportionateScreenWidth(15),
            )
          ]),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: 42.0,
      ),
    );
  }
}
