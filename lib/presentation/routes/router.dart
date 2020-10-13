import 'package:auto_route/auto_route_annotations.dart';
import 'package:my_todo/presentation/about/about_page.dart';
import 'package:my_todo/presentation/todos/todo_form/todo_form_page.dart';
import 'package:my_todo/presentation/todos/todos_overview/todos_overview_page.dart';

import '../auth/sign_in/signin_page.dart';
import '../auth/sign_up/signup_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
    MaterialRoute(page: TodosOverviewPage),
    MaterialRoute(page: TodoFormPage),
    MaterialRoute(page: AboutPage),
  ],
)
class $Router {}
