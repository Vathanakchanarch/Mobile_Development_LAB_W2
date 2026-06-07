import 'package:flutter/material.dart';

// Part 2 StateLess

// class Favorite extends StatelessWidget {
//   const Favorite({super.key,required this.isfavorite});
//   final bool isfavorite;

//   @override
//   Widget build(BuildContext context) {
//     Color iconCor=Colors.black;
//     if (isfavorite){
//       iconCor=Colors.red;
//     }
//     else{
//       iconCor=Colors.black;
//     }
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.all(30),
//         decoration: BoxDecoration(
//           border: Border(
//             top: BorderSide(width: 2, color: const Color.fromARGB(82, 0, 0, 0)),
//             bottom: BorderSide(
//               width: 2,
//               color: const Color.fromARGB(29, 0, 0, 0),
//             ),
//           ),
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: .start,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.all(10),
//                     child: Text(
                      
//                       "Title",
//                       style: TextStyle(
//                         color: const Color.fromARGB(255, 3, 137, 247),
//                       ),
//                     ),
//                   ),
                  
//                   Container(
//                     padding: EdgeInsets.all(20),
//                     child: Text("descript")),
//                 ],
//               ),
//             ),
//             IconButton(onPressed: () => {}, icon: Icon(Icons.heart_broken,color: iconCor,)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(
//   MaterialApp(
//     home: Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text("Favorite cards"),
//       ),
//       body: Column(children: [
//            Favorite(isfavorite: true,),
//            Favorite(isfavorite: false,),
//            Favorite(isfavorite: true,),
//           ],
//         ),
//     ),
//   ),
// );


//Part 3

class Favorite extends StatefulWidget {
  const Favorite({super.key,});
  

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  Color iconCor=Colors.black;
  int c=0;
  void onTap(){
    setState(() {
      c++;
      if (c==1){
      iconCor=Colors.red;
    }
    else if(c==2){
      iconCor=Colors.black;
      c=0;
    }
    });
    
  }
  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 2, color: const Color.fromARGB(82, 0, 0, 0)),
            bottom: BorderSide(
              width: 2,
              color: const Color.fromARGB(29, 0, 0, 0),
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      
                      "Title",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 3, 137, 247),
                      ),
                    ),
                  ),
                  
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("descript")),
                ],
              ),
            ),
            IconButton(onPressed: onTap, icon: Icon(Icons.heart_broken,color: iconCor,)),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(children: [
           Favorite(),
           Favorite(),
           Favorite(),
          ],
        ),
    ),
  ),
);
