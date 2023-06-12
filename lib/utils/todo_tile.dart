import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  // String and Bool
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: [
            // CheckBox
            Checkbox(value: taskCompleted, onChanged: onChanged),

            // Task Name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
