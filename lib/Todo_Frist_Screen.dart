import 'package:flutter/material.dart';
import 'package:todo/Edit_Screen.dart';
import 'package:todo/Task_Add_Screen.dart';

class TodoFristScreen extends StatefulWidget {
  const TodoFristScreen({super.key});

  @override
  State<TodoFristScreen> createState() => _TodoFristScreenState();
}

class _TodoFristScreenState extends State<TodoFristScreen> {
  void MyDeleteAlertBox() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          title: const Text("Are you sure ?"),
          content: const Text("Do you want to delete"),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("Cancel")),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Yes",
                  style: TextStyle(color: Colors.red),
                )),
          ],
        );
      },
    );
  }

  List TaskList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Todo"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: const Text("Task Title"),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description"),
                  Text("Time"),
                ],
              ),
              trailing: Wrap(children: [
                IconButton(
                  onPressed: MyDeleteAlertBox,
                  icon: const Icon(Icons.delete),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditScreen(),
                        ));
                  },
                  icon: const Icon(Icons.edit),
                ),
              ]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskAddScreen(),
            ),
          );
        },
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
