import 'package:flutter/material.dart';







class _Seleected extends StatefulWidget {
  const _Seleected({super.key});

  @override
  State<_Seleected> createState() => __SeleectedState();
}

class __SeleectedState extends State<_Seleected> {
  Text label=Text("Not selected");
  
  final ButtonStyle Selectstyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue[300],
    textStyle: const TextStyle(color:Colors.white)
    
  );
  final ButtonStyle Notselect = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue[50],
    textStyle: const TextStyle(color:Colors.black),
  );
  bool isselect= false;
  ButtonStyle Current(){
    if (isselect){
      return Selectstyle;
    }
    else {
      return Notselect;
    }
  }
  int c=0;
  void onTap(){
    setState(() {
      c++;
      if (c==1){
        isselect=true;
        label=Text("Selected");
      }
      if (c==2){
        isselect=false;
        c=0;
        label=Text("Not Selected");
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: Current(),
        onPressed: onTap,
        child:Center(child: label),
      ),
    );
  }
}

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
        mainAxisAlignment: .center,
        children: [
          _Seleected(),
          SizedBox(
            height: 50,
          ),
          _Seleected(),
          SizedBox(
            height: 50,
          ),
          _Seleected()
        ],
      )),
    ),
  ),
);
