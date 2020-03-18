import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.taskTitle, this.checkboxState, this.checkboxCallback});
  final String taskTitle;
  final bool checkboxState;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              checkboxState ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: checkboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
