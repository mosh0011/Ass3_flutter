import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

import '../data/tasks_data.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Task task;
  Function remove;
  TaskWidget(this.task, this.fun, this.remove);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
        secondary: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          color: Color.fromARGB(255, 170, 29, 29),
          onPressed: () {
            remove(task);
          },
        ),
      ),
    );
  }
}
