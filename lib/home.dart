import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CounterNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Counter App",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
                child: Text(
              CounterNumber.toString(),
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    CounterNumber = CounterNumber - 1;
                  });
                },
                child: Icon(CupertinoIcons.minus))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            CounterNumber = CounterNumber + 1;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
