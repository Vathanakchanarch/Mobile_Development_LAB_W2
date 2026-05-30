import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard({super.key, required this.label, required this.icon,required this.color});
  final Color color;
  final Text label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, right: 20),
                child: icon,
              ),
              label
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Hobbies"),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.grey,
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              HobbyCard(label: Text("Travel",style: TextStyle(color: Colors.white,fontSize: 20),), icon: Icon(Icons.travel_explore,color: Colors.white,),color: Colors.green,),
              SizedBox(height: 10,),
              HobbyCard(label: Text("Skating",style: TextStyle(color: Colors.white,fontSize: 20)), icon: Icon(Icons.downhill_skiing,color: Colors.white,), color: Colors.blueGrey)
            ],
          ),
        ),
      ),
    ),
  );
}
