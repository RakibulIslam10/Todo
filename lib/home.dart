import 'package:flutter/material.dart';
import 'package:todo/MyAllStayil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 double result = 0;

  TextEditingController Sum1Controler = TextEditingController();
   TextEditingController Sum2Controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sum App",
          style: MyTextStyle(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Text(
              "Result = $result",
              style: MyTextStyle(),
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: Sum1Controler,
              decoration: MyDecoration("Sum1"),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: Sum2Controler,
              decoration: MyDecoration('Sum2'),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  double a = double.parse(Sum1Controler.text.trim());
                  double b = double.parse(Sum1Controler.text.trim());
                  setState(() {
                    result = a + b;
                  });
                },
                style: MyBattonStyle(),
                child: const Text("Add"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
