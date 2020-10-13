import 'package:flutter/material.dart';
import 'package:my_todo/presentation/helpers/styles/constants.dart';
import 'widgets/about_body.dart';
import '../menu/menu.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Menu(),
          AboutBody(),
        ],
      ),
    );
  }
}
