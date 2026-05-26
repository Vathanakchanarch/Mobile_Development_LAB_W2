
import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          
          children: [
            
            Container(
              color:Colors.white ,
              height: 100, 
            ),

            Container(
              color: Colors.blueAccent,
              height: 300,
              
            ),
            
            

            Expanded(child: Container(
              color: Colors.pink,
              padding: EdgeInsets.only(left:0,right: 100),
              child: Row(
                children: [
                  Expanded(child: Container(
                    color: Colors.green,
                  ))
                ],
              ),
            )),

            Expanded(child: Container(
              color: Colors.white,
              
              child: Row(
                
                children: [
                  Expanded(child: Container(
                    color: Colors.amber,
                    margin: EdgeInsets.only(left: 0,right: 20),
                  )),
                  Expanded(child: Container(
                    color: Colors.amber,
                    margin: EdgeInsets.only(left: 0,right: 20),
                  )),
                  Expanded(child: Container(
                    color: Colors.amber,
                  ))
                ],
              ),
            )),
            

            SizedBox(
              height: 20,
            ),

            Expanded(child: Container(
              color: Colors.pink,
            ))
          ],
        ),
      ),
    )
  );
}