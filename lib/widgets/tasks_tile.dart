import 'package:flutter/material.dart';

// Each task tile, consisting of of task detail and checkbox

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a task",
        style: TextStyle(
            decoration: isChecked == true ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkBoxState: isChecked,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox(
      {this.checkBoxState, required this.toggleCheckboxState, super.key});

  final bool? checkBoxState;
  final Function(bool?) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkBoxState, onChanged: toggleCheckboxState);
  }
}
