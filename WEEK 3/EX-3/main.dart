import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey,
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("OOP",style: TextStyle(color: Colors.white),),
            ),
            
          ),
          
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("Dart",style: TextStyle(color: Colors.white),),
            ),
            
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("Flutter",style: TextStyle(color: Colors.white),),
            ),
             
          )
        ],
      ),
      
    ),
  ));
}
