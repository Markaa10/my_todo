import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/todos/todo_actor/todo_actor_bloc.dart';
import '../../../../domain/todos/todo.dart';
import '../../../helpers/size_config.dart';
import '../../../routes/router.gr.dart';

class TodoCard extends StatelessWidget {
  final Color color;
  final Color iconColor;
  final Todo todo;
  final Function onTap;
  final Function onDelete;

  const TodoCard({
    Key key,
    this.color,
    this.iconColor,
    this.todo,
    this.onTap,
    this.onDelete,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        margin: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(16),
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(16)),
        ),
        alignment: Alignment.centerLeft,
        child: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      secondaryBackground: Container(
        margin: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(16),
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(16)),
        ),
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      onDismissed: (DismissDirection direction) {
        if (direction == DismissDirection.endToStart) {
          context.bloc<TodoActorBloc>().add(TodoActorEvent.deleted(todo));
          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('${todo.name.getOrCrash()} Deleted')));
        } else if (direction == DismissDirection.startToEnd) {
          context.bloc<TodoActorBloc>().add(TodoActorEvent.completed(todo));
          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('${todo.name.getOrCrash()} Completed')));
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(16),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(24),
          vertical: getProportionateScreenHeight(24),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(16)),
        ),
        child: ListTile(
          onTap: () {
            ExtendedNavigator.of(context).pushTodoFormPage(editedTodo: todo);
          },
          leading: Icon(
            Icons.check_circle,
            color: iconColor,
          ),
          title: Text(
            todo.name.getOrCrash(),
            textAlign: TextAlign.start,
          ),
          trailing: Text(
              '${Timestamp.now().toDate().day.toString()} / ${Timestamp.now().toDate().month.toString()} / ${Timestamp.now().toDate().year.toString()}'),
        ),
      ),
    );
  }
}
