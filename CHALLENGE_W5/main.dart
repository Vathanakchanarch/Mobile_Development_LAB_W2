import 'dart:math';

import 'package:flutter/material.dart';

  const String dicePath1 = "assets/ex3/dice-1.png";
  const String dicePath2 = "assets/ex3/dice-2.png";
  const String dicePath4 = "assets/ex3/dice-4.png";
  const String dicePath3 = "assets/ex3/dice-3.png";
  const String dicePath5 = "assets/ex3/dice-5.png";
  const String dicePath6 = "assets/ex3/dice-6.png";

  String current = dicePath1;




class DveRoll extends StatefulWidget {
  const DveRoll({super.key});

  @override
  State<DveRoll> createState() => _DveRollState();
}

class _DveRollState extends State<DveRoll> {
  int c=0;
  String current = dicePath1;

  void ontap(){
    setState(() {
    c=Random().nextInt(6);
    if (c==1){
        current = dicePath1;
    }else  if (c==2){
        current= dicePath2;
        
    }else if(c==3){
       current= dicePath3;
    }else if(c==4){
       current= dicePath4;
    }else if(c==5){
       current= dicePath5;
    }else{
      current= dicePath6;
    }
    }
    );

  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          color: Colors.purple,
          child: Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Image.asset(current, height: 300),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    
                    onPressed: ontap,
                    child: Text(
                      "Click!!!! ",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: DveRoll()));
}


