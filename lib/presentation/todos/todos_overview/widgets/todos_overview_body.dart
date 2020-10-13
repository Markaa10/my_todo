import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/todos/todo_watcher/todo_watcher_bloc.dart';
import '../../../helpers/size_config.dart';
import '../../../helpers/styles/constants.dart';
import '../../../helpers/styles/styles.dart';
import 'critical_failure_display_widget.dart';
import 'error_todo_card.dart';
import 'todo_card.dart';

class TodosOverviewBody extends StatefulWidget {
  @override
  _TodosOverviewBodyState createState() => _TodosOverviewBodyState();
}

class _TodosOverviewBodyState extends State<TodosOverviewBody> {
  double xOffset = 0;

  double yOffset = 0;

  double scaleFactor = 1;

  bool menuIsOpen = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoWatcherBloc, TodoWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              return AnimatedContainer(
                decoration: BoxDecoration(
                  color: const Color(0xffE5E5E5),
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(20)),
                ),
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeIn,
                transform: Matrix4.translationValues(xOffset, yOffset, 0)
                  ..scale(scaleFactor),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(24)),
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
                            'My Todo',
                            style: navbarTitle,
                          ),
                          const Icon(
                            Icons.notifications,
                            size: 32.0,
                          ),
                        ],
                      ),
                      TodoCard(
                        todo: state.todos.firstWhere((todo) => todo.done) ??
                            state.todos.first,
                        color: kTodoCompletedColor,
                        iconColor: Colors.green,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.black,
                            ),
                            text: 'Remaining Todos',
                            children: [
                              TextSpan(
                                  text: ' (24)',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.todos.length,
                          itemBuilder: (context, index) {
                            final todo = state.todos[index];
                            if (todo.failureOption.isSome()) {
                              return ErrorTodoCard(todo: todo);
                            } else {
                              return TodoCard(
                                todo: todo,
                                color: Colors.white,
                                iconColor: kPrimaryColor,
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            loadFailure: (state) {
              return CriticalFailureDisplay(failure: state.todoFailure);
            });
      },
    );
  }
}
