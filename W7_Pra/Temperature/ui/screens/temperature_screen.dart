import 'dart:ffi';

import 'package:flutter/material.dart';

class TemperatureScreen extends StatefulWidget {
  TemperatureScreen({super.key,required this.onNext});
  
  final VoidCallback onNext;
  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  

  
  final InputDecoration inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: 'Enter a temperature',
    hintStyle: const TextStyle(color: Colors.white),
  );
  double fahrenheit=0.00;
  
 
  void onTextChanged(String value){
      double c = double.parse(value) ;
      setState(() {
         fahrenheit = c * 9/5 + 32;
      });
  }
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.thermostat_outlined,
              size: 120,
              color: Colors.white,
            ),
            const Center(
              child: Text(
                "Converter",
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
            ),
            const SizedBox(height: 50),
            const Text("Temperature in Degrees:"),
            const SizedBox(height: 10),
            TextField(
              onChanged: onTextChanged,
              decoration: inputDecoration,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            const Text("Temperature in Fahrenheit:"),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("${fahrenheit.toString()} F "),
            ),
            SizedBox(height: 10,),
            OutlinedButton(
            onPressed: widget.onNext,
            style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 1.0, color: Colors.white)),
            child: const Text('ByeBye',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              )),
          )
            
          ],
        ),
      ),
    );
  }
}
