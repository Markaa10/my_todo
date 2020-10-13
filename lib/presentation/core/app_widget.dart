import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo/application/auth/auth_bloc.dart';

import 'package:my_todo/injection.dart';
import 'package:my_todo/presentation/routes/router.gr.dart' as r;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'My Todo',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator.builder<r.Router>(router: r.Router()),
        theme: ThemeData(
          fontFamily: 'Gilroy',
        ),
      ),
    );
  }
}
