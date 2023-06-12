import "package:flutter/material.dart";
import "package:flutter_todo_app/utils/my_button.dart";

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  const DialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow[300],
        content: Container(
          height: 120.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // get user input
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add a new task",
                ),
              ),

              // button -> save + cancel
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // save button
                  MyButton(text: "Save", onPressed: () {}),
                  const SizedBox(width: 8),
                  // cancel button
                  MyButton(text: "Cancel", onPressed: () {}),
                ],
              )
            ],
          ),
        ));
  }
}
