import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.all(50),
      color: Colors.blue[300],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text("CADT STUDENTS",style: TextStyle(fontSize: 50,color: Colors.white),),
        ),
      ),
    ),
  ));
}