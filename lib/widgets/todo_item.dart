import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todoItem;
  final onToDoChanged;
  final onToDoDeleted;

  const ToDoItem(
      {super.key,
      required this.todoItem,
      this.onToDoChanged,
      this.onToDoDeleted});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            SlidableAction(
              onPressed: (_) => onToDoDeleted(todoItem.id),
              backgroundColor: tdRed,
              foregroundColor: tdWhite,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(20),
              // autoClose: true,
            ),
          ],
        ),
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          onTap: () {
            onToDoChanged(todoItem);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: tdWhite,
          leading: Icon(
            todoItem.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue,
          ),
          title: Text(
            todoItem.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todoItem.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          // trailing: Container(
          //   padding: const EdgeInsets.all(0),
          //   margin: const EdgeInsets.symmetric(vertical: 12),
          //   height: 35,
          //   width: 35,
          //   decoration: BoxDecoration(
          //     color: tdRed,
          //     borderRadius: BorderRadius.circular(5),
          //   ),
          //   child: IconButton(
          //     onPressed: () {
          //       onToDoDeleted(todoItem.id);
          //     },
          //     color: tdWhite,
          //     iconSize: 18,
          //     icon: const Icon(
          //       Icons.delete,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
