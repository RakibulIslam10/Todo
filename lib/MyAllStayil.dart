import 'package:flutter/material.dart';

MyDecoration(hintText){
  return InputDecoration(
      hintText: hintText,
      fillColor: Colors.white,
      border: OutlineInputBorder()
  );
}

MyTextStyle(){
  return TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
}

MyBattonStyle(){
  ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 55),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    )
  );
}