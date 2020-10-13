import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_todo/application/auth/auth_bloc.dart';
import 'package:my_todo/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:my_todo/presentation/helpers/styles/constants.dart';
import 'package:my_todo/presentation/helpers/widgets/app_button.dart';
import 'package:my_todo/presentation/helpers/widgets/app_logo.dart';
import 'package:my_todo/presentation/helpers/widgets/app_textformfield.dart';
import 'package:my_todo/presentation/routes/router.gr.dart';

import '../../../helpers/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) => state.authFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) => FlushbarHelper.createError(
            message: failure.map(
              cancelledByUser: (_) => 'Cancelled.',
              serverError: (_) => 'Server Error.',
              emailAlreadyInUse: (_) => 'Email Already in Use.',
              invalidEmailAndPasswordCombination: (_) =>
                  'Invalid Email And Password Combination.',
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
                  SizedBox(height: SizeConfig.screenHeight * 0.101),
                  AppLogo(),
                  SizedBox(height: SizeConfig.screenHeight * 0.060),
                  Text(
                    'Create New Account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.024),
                  AppTextField(
                    hintText: 'Full Name',
                    suffixIcon: Icons.person,
                    onChanged: (value) => context.bloc<SignUpFormBloc>().add(
                          SignUpFormEvent.fullNameChanged(value),
                        ),
                    validator: (_) => context
                        .bloc<SignUpFormBloc>()
                        .state
                        .fullName
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            nameTooShort: (_) => 'Name Too Short',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.032),
                  AppTextField(
                    hintText: 'Email ID',
                    suffixIcon: Icons.email,
                    onChanged: (value) => context.bloc<SignUpFormBloc>().add(
                          SignUpFormEvent.emailChanged(value),
                        ),
                    validator: (_) => context
                        .bloc<SignUpFormBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.032),
                  AppTextField(
                    hintText: 'Password',
                    obscureText: true,
                    suffixIcon: Icons.lock,
                    onChanged: (value) => context.bloc<SignUpFormBloc>().add(
                          SignUpFormEvent.passwordChanged(value),
                        ),
                    validator: (_) => context
                        .bloc<SignUpFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short Password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.032),
                  AppButton(
                    onPressed: () => context.bloc<SignUpFormBloc>().add(
                          const SignUpFormEvent
                              .registerWithEmailAndPasswordPressed(),
                        ),
                    text: 'Create My Account',
                    textColor: Colors.white,
                    color: kPrimaryColor,
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
                    onPressed: () => context.bloc<SignUpFormBloc>().add(
                          const SignUpFormEvent.signUpWithGooglePressed(),
                        ),
                    icon: SvgPicture.asset('assets/icons/Google.svg'),
                    label: Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.051),
                  AppButton(
                    onPressed: () => ExtendedNavigator.of(context)
                        .replace(Routes.signInPage),
                    text: 'Sign In Instead',
                    textColor: kPrimaryColor,
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
