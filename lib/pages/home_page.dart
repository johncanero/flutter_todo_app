import 'package:flutter/material.dart';
import 'package:flutter_todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('TO DO'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Make Tutorial",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskName: "Do Exercise",
            taskCompleted: false,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}
