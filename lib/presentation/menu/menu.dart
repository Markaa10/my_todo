import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_todo/presentation/helpers/size_config.dart';
import 'package:my_todo/presentation/helpers/widgets/app_logo.dart';
import 'package:my_todo/presentation/routes/router.gr.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.115),
          AppLogo(),
          SizedBox(height: SizeConfig.screenHeight * 0.060),
          Column(
            children: [
              ListTile(
                onTap: () => ExtendedNavigator.of(context)
                    .replace(Routes.todosOverviewPage),
                leading: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: getProportionateScreenWidth(20),
                ),
                title: const Text(
                  'Main Feed',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.person_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Your Profile',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.224),
          ListTile(
            onTap: () =>
                ExtendedNavigator.of(context).replace(Routes.aboutPage),
            leading: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            title: Text(
              'About App',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
