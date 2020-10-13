// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/todos/todo.dart';
import '../about/about_page.dart';
import '../auth/sign_in/signin_page.dart';
import '../auth/sign_up/signup_page.dart';
import '../splash/splash_page.dart';
import '../todos/todo_form/todo_form_page.dart';
import '../todos/todos_overview/todos_overview_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String todosOverviewPage = '/todos-overview-page';
  static const String todoFormPage = '/todo-form-page';
  static const String aboutPage = '/about-page';
  static const all = <String>{
    splashPage,
    signInPage,
    signUpPage,
    todosOverviewPage,
    todoFormPage,
    aboutPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.todosOverviewPage, page: TodosOverviewPage),
    RouteDef(Routes.todoFormPage, page: TodoFormPage),
    RouteDef(Routes.aboutPage, page: AboutPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    TodosOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TodosOverviewPage(),
        settings: data,
      );
    },
    TodoFormPage: (data) {
      final args = data.getArgs<TodoFormPageArguments>(
        orElse: () => TodoFormPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TodoFormPage(
          key: args.key,
          editedTodo: args.editedTodo,
        ),
        settings: data,
      );
    },
    AboutPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushSignUpPage() => push<dynamic>(Routes.signUpPage);

  Future<dynamic> pushTodosOverviewPage() =>
      push<dynamic>(Routes.todosOverviewPage);

  Future<dynamic> pushTodoFormPage({
    Key key,
    Todo editedTodo,
  }) =>
      push<dynamic>(
        Routes.todoFormPage,
        arguments: TodoFormPageArguments(key: key, editedTodo: editedTodo),
      );

  Future<dynamic> pushAboutPage() => push<dynamic>(Routes.aboutPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// TodoFormPage arguments holder class
class TodoFormPageArguments {
  final Key key;
  final Todo editedTodo;
  TodoFormPageArguments({this.key, this.editedTodo});
}
