import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 102, 0),),
            Icon(Icons.more_vert)
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create new task",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('Main task name',
                style: TextStyle(color: Color.fromARGB(255, 255, 102, 0))),
            const SizedBox(
              height: 2,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Due Date',
                style: TextStyle(color: Color.fromARGB(255, 255, 102, 0))),
            const SizedBox(
              height: 2,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  suffixIcon: Icon(Icons.date_range)),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Description',
                style: TextStyle(color: Color.fromARGB(255, 255, 102, 0))),
            const SizedBox(
              height: 2,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
              // maxLength: 6,
              maxLines: 4,
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
           
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 102, 0), 
                   borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text('Add Task', style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
