import 'dart:ffi';

import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disable }


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.bottom = ButtonType.primary,
    required this.icon,
    required this.label,
    this.iconposition = "Left",
  });
  final ButtonType bottom;
  final String label;
  final IconData icon;
  final String iconposition;
  

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    if (bottom == ButtonType.primary) {
      buttonColor = Colors.blue;
    } else if (bottom == ButtonType.secondary) {
      buttonColor = Colors.green;
    } else {
      buttonColor = Colors.grey;
    }


    return Expanded(
      
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: buttonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconposition == "Left") Container(padding: EdgeInsets.all(10), child: Icon(icon,)), 
            Text(label,style: TextStyle(color: Colors.black,fontSize: 30),),
            if (iconposition == "right") Container(padding: EdgeInsets.all(10), child: Icon(icon,))
             
            
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom buttons")),
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(children: [
            CustomButton(icon: Icons.check, label: "Start", iconposition: "right",),
            SizedBox(height: 10),
            CustomButton(icon: Icons.time_to_leave, label: "Time",bottom: ButtonType.secondary),
            SizedBox(height: 10),
            CustomButton(icon: Icons.access_alarm, label: "Account",iconposition: "right",bottom: ButtonType.disable)
          ],
        ),
        ),
      ),
    ),
  );
}
