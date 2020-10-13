import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_todo/injection.dart';

import 'components/body.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Body(),
      ),
    );
  }
}
