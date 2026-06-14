
import 'package:flutter/material.dart';
List<String> colors = ["red", "blue", "green"];
List<Widget> getcolor(){
  return colors.map((color) => Text(color)).toList();
}
void main (){
  runApp(MaterialApp(
    home: Scaffold(
      body: ListView(
        children: [
          Text("Method 1: Loop in Array",style: TextStyle(fontWeight: FontWeight.bold)),
          for (String color in colors) Text(color),
          Text("Method 2: Loop in Array",style: TextStyle(fontWeight: FontWeight.bold)),
          ...colors.map((color) => Text(color),),
          Text("Method 23: Loop in Array",style: TextStyle(fontWeight: FontWeight.bold)),
          ...getcolor(),
          
        ],
      ),
    ),
  ));
}