import 'package:flutter/material.dart';
import 'package:my_todo/presentation/helpers/size_config.dart';
import 'package:my_todo/presentation/helpers/styles/styles.dart';
import 'package:my_todo/presentation/helpers/widgets/app_logo.dart';

class AboutBody extends StatefulWidget {
  @override
  _AboutBodyState createState() => _AboutBodyState();
}

class _AboutBodyState extends State<AboutBody> {
  double xOffset = 0;

  double yOffset = 0;

  double scaleFactor = 1;

  bool menuIsOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: const Color(0xffE5E5E5),
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
      ),
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeIn,
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.029),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (menuIsOpen)
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      xOffset = 0;
                      yOffset = 0;
                      scaleFactor = 1;
                      menuIsOpen = false;
                    });
                  },
                )
              else
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      xOffset = 213;
                      yOffset = 115;
                      scaleFactor = 0.6;
                      menuIsOpen = true;
                    });
                  },
                ),
              Text(
                'About App',
                style: navbarTitle,
              ),
              Icon(Icons.nat),
            ],
          ),
          AppLogo(),
          Text(
            'My Todo',
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(24),
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            'MyTodo is a simple todo application that lets you organize your tasks into lists and become more prodcutive.',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
