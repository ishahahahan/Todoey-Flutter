import 'package:flutter/material.dart';
import 'tasks_tile.dart';

// The home page where we can see all the tasks and check off our list

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [TaskTile(), TaskTile()],
    );
  }
}