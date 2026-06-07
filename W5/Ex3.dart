import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

class ChangeImg extends StatefulWidget {
  const ChangeImg({super.key});

  @override
  State<ChangeImg> createState() => _ChangeImgState();
}

class _ChangeImgState extends State<ChangeImg> {
  int c = 0;
  String current=images[0];
  void Next(){
    c++;
    setState(() {
      if(c==1){
        current=images[1];  
      }
      else if(c==2){
        current=images[2];
      }
      else if(c==3){
        current=images[3];
      }
      else if(c==4){
        current=images[4];
      }
      if(c>=4){
        c=4;
      }
    });

  }
  void previous(){
    c--;
    setState(() {
      if(c==4){
        current=images[4];  
      }
      else if(c==3){
        current=images[3];
      }
      else if(c==2){
        current=images[2];
      }
      else if (c==1){
        current=images[1];
      }
      else if(c==0){
        current=images[0];
      }
      else if(c<=0){
        c=0;
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: previous,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: Next,
              ),
            ),
          ],
        ),
        body: Image.asset(current),
      );
  }
}




void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      // We use this line because we want to remove the debug on the top right on the screen
      home :ChangeImg(),
    ));
