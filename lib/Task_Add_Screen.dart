import 'package:flutter/material.dart';

class TaskAddScreen extends StatefulWidget {
  const TaskAddScreen({super.key});

  @override
  State<TaskAddScreen> createState() => _TaskAddScreenState();
}

class _TaskAddScreenState extends State<TaskAddScreen> {
  final _Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add new Task'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Form(
            key: _Formkey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextFormField(
                  validator: (input) {
                    if (input!.trim().isEmpty) {
                      return "Please enter task name";
                    }
                  },
                  decoration: const InputDecoration(hintText: "Task Titale"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (input) {
                    if (input!.isEmpty) {
                      return "Please enter task description";
                    }
                  },
                  maxLines: 5,
                  maxLength: 100,
                  decoration: const InputDecoration(hintText: "Description"),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_Formkey.currentState!.validate()) {}
                    },
                    child: const Text("Add"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
