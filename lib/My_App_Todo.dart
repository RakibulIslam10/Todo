import 'package:flutter/material.dart';
import 'package:todo/Todo_Frist_Screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoFristScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigoAccent,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
          color: Colors.white)

        ),
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
            disabledBorder: OutlineInputBorder(),
            errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              backgroundColor: Colors.indigoAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
          ),
        )
      ),
    );
  }
}
