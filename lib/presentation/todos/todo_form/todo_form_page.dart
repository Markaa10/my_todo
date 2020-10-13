import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/todos/todo_form/todo_form_bloc.dart';
import '../../../domain/todos/todo.dart';
import '../../../injection.dart';
import '../../helpers/size_config.dart';
import '../../helpers/styles/constants.dart';
import '../../helpers/styles/styles.dart';
import '../../helpers/widgets/app_button.dart';
import '../../helpers/widgets/app_richtext.dart';
import '../../routes/router.gr.dart';
import '../todos_overview/todos_overview_page.dart';

class TodoFormPage extends StatelessWidget {
  final Todo editedTodo;

  const TodoFormPage({Key key, this.editedTodo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TodoFormBloc>()
        ..add(TodoFormEvent.initialized(optionOf(editedTodo))),
      child: BlocConsumer<TodoFormBloc, TodoFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) =>
                          "Couldn't update the note. Was it deleted from another device?",
                      unexpected: (_) =>
                          'Unexpected error occured, please contact support.',
                    ),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.todosOverviewPage);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: _addTodoFormContainer(context),
            body: Stack(
              children: [
                TodosOverviewPage(),
                TodoForm(),
              ],
            ),
          );
        },
      ),
    );
  }

  Container _addTodoFormContainer(BuildContext context) {
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
          context.bloc<TodoFormBloc>().add(const TodoFormEvent.saved());
        },
        child: Icon(
          Icons.check,
          size: getProportionateScreenWidth(24),
          color: Colors.white,
        ),
      ),
    );
  }
}

class TodoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(24),
          vertical: getProportionateScreenHeight(267),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: getProportionateScreenWidth(2.0),
            sigmaY: getProportionateScreenHeight(2.0),
          ),
          child: Container(
            width: getProportionateScreenWidth(327),
            height: getProportionateScreenHeight(250),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(19)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                BlocBuilder<TodoFormBloc, TodoFormState>(
                  buildWhen: (p, c) => p.isEditting != c.isEditting,
                  builder: (context, state) {
                    return state.isEditting
                        ? const AppRichText(
                            prefixText: 'Edit ',
                            text: 'Todo',
                          )
                        : const AppRichText(
                            prefixText: 'Add a ',
                            text: 'New Todo',
                          );
                  },
                ),
                const Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(28)),
                  width: getProportionateScreenWidth(270),
                  height: getProportionateScreenHeight(115),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(19)),
                  ),
                  child: BlocBuilder<TodoFormBloc, TodoFormState>(
                    buildWhen: (p, c) =>
                        p.showErrorMessages != c.showErrorMessages,
                    builder: (context, state) {
                      return Form(
                        autovalidate: state.showErrorMessages,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            context
                                .bloc<TodoFormBloc>()
                                .add(TodoFormEvent.nameChanged(value));
                          },
                          validator: (_) {
                            return context
                                .bloc<TodoFormBloc>()
                                .state
                                .todo
                                .name
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    empty: (f) => 'Cannot be empty.',
                                    exceedingLength: (f) => 'Exceeding Length.',
                                    orElse: () => null,
                                  ),
                                  (r) => null,
                                );
                          },
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(),
                AppButton(
                  text: 'Cancel',
                  onPressed: () => ExtendedNavigator.of(context).pop(),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
