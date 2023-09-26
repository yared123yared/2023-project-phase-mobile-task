import 'package:flutter/material.dart';
import 'package:flutter_navigation/utils/constant.dart';

import '../../model/task.dart';

class AddTask extends StatelessWidget {
  static const routeName = '/add-task';
  final Function onAddingTask;
  AddTask({super.key, required this.onAddingTask});

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController descTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: nameTextEditingController,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: descTextEditingController,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        child: const Text('Submit Task'),
        onPressed: () {
          if (nameTextEditingController.text.isNotEmpty &&
              descTextEditingController.text.isNotEmpty) {
            tasks.add(Task(
                name: nameTextEditingController.text,
                description: descTextEditingController.text));
            onAddingTask();
            Navigator.pop(context);
          } else {
            const SnackBar(
                content:
                    Text('Please provide name and description of the task'));
          }
        },
      ),
    );
  }
}
