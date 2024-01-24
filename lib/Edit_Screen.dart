import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Task'),
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
                    child: const Text("Update"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
