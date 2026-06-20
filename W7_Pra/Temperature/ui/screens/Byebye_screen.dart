import 'package:flutter/material.dart';

class ByeByeScreen extends StatelessWidget {
  const ByeByeScreen({super.key,});
  
  

  @override
  Widget build(BuildContext context) {
    

    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Icon(
            Icons.thermostat_outlined,
            size: 120,
            color: Colors.white,
          ),
        ),
        const Text(
          "ByeBYe!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
        

      ],
    ));
  }
}
