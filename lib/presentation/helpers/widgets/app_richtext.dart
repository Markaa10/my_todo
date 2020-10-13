import 'package:flutter/material.dart';

import '../size_config.dart';

class AppRichText extends StatelessWidget {
  final String prefixText;
  final String text;

  const AppRichText({
    Key key,
    this.prefixText,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontSize: getProportionateScreenWidth(24),
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
        ),
        text: prefixText,
        children: [
          TextSpan(
            text: text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
