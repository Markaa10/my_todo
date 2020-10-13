import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_todo/application/auth/auth_bloc.dart';
import 'package:my_todo/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_todo/presentation/helpers/styles/constants.dart';
import 'package:my_todo/presentation/helpers/widgets/app_button.dart';
import 'package:my_todo/presentation/helpers/widgets/app_logo.dart';
import 'package:my_todo/presentation/helpers/widgets/app_textformfield.dart';
import 'package:my_todo/presentation/routes/router.gr.dart';

import '../../../helpers/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) => state.authFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) => FlushbarHelper.createError(
            message: failure.map(
              cancelledByUser: (_) => 'Cancelled.',
              serverError: (_) => 'Server Error.',
              emailAlreadyInUse: (_) => 'Email Already In Use.',
              invalidEmailAndPasswordCombination: (_) =>
                  'Invalid Email and Password Combination.',
            ),
          ).show(context),
          (_) {
            ExtendedNavigator.of(context).replace(Routes.todosOverviewPage);
            context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
          },
        ),
      ),
      builder: (context, state) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Form(
              autovalidate: state.showErrorMessages,
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.14),
                  AppLogo(),
                  SizedBox(height: SizeConfig.screenHeight * 0.040),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.024),
                  AppTextField(
                    hintText: 'Email',
                    suffixIcon: Icons.email,
                    onChanged: (value) => context
                        .bloc<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value)),
                    validator: (_) => context
                        .bloc<SignInFormBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Email.',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.024),
                  AppTextField(
                    obscureText: true,
                    hintText: 'Password',
                    suffixIcon: Icons.lock,
                    onChanged: (value) => context
                        .bloc<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) => context
                        .bloc<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short Password.',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.032),
                  Row(
                    children: [
                      AppButton(
                        onPressed: () {},
                        text: 'Forgot Password?',
                        textColor: kPrimaryColor,
                      ),
                      AppButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithEmailAndPasswordPressed(),
                              );
                        },
                        text: 'Sign Me in',
                        color: kPrimaryColor,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.060),
                  FlatButton.icon(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(44),
                        vertical: getProportionateScreenHeight(19)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(16)),
                    ),
                    color: Colors.red.withOpacity(0.2),
                    onPressed: () {
                      context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithGooglePressed(),
                          );
                    },
                    icon: SvgPicture.asset('assets/icons/Google.svg'),
                    label: Text(
                      'Google Sign In',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.098),
                  AppButton(
                    text: 'Create New Account',
                    textColor: kPrimaryColor,
                    onPressed: () {
                      ExtendedNavigator.of(context).replace(Routes.signUpPage);
                    },
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.032),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
