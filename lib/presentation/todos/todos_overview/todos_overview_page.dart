import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo/presentation/menu/menu.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/todos/todo_actor/todo_actor_bloc.dart';
import '../../../application/todos/todo_watcher/todo_watcher_bloc.dart';
import '../../../injection.dart';
import '../../helpers/size_config.dart';
import '../../helpers/styles/constants.dart';
import '../../helpers/styles/styles.dart';
import '../../routes/router.gr.dart';
import 'widgets/todos_overview_body.dart';

class TodosOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoWatcherBloc>(
          create: (context) => getIt<TodoWatcherBloc>()
            ..add(const TodoWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<TodoActorBloc>(
          create: (context) => getIt<TodoActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).replace(Routes.signInPage),
                orElse: () {},
              );
            },
          ),
          BlocListener<TodoActorBloc, TodoActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.todoFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support.',
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          body: Stack(
            children: [
              Menu(),
              TodosOverviewBody(),
            ],
          ),
          floatingActionButton: _addTodoContainer(context),
        ),
      ),
    );
  }

  Container _addTodoContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(24),
        vertical: getProportionateScreenHeight(27),
      ),
      width: getProportionateScreenWidth(64),
      height: getProportionateScreenHeight(64),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(21)),
        boxShadow: [appBoxShadow],
      ),
      child: RawMaterialButton(
        onPressed: () {
          ExtendedNavigator.of(context).pushTodoFormPage();
        },
        child: Icon(
          Icons.add,
          size: getProportionateScreenWidth(24),
          color: Colors.white,
        ),
      ),
    );
  }
}
