import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AppNavbar extends StatefulWidget {
  const AppNavbar({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  _AppNavbarState createState() => _AppNavbarState();
}

class _AppNavbarState extends State<AppNavbar> {
  double xoffSet = 0;
  double yoffSet = 0;
  double scaleFactor = 1;

  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        Text(
          widget.text,
          style: navbarTitle,
        ),
        const Icon(
          Icons.notifications,
          size: 32.0,
        ),
      ],
    );
  }
}
