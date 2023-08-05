import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'tasks_tile.dart';

// The home page where we can see all the tasks and check off our list

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
    required this.tasks
  });

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
