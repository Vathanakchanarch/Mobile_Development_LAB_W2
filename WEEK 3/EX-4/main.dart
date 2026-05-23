// Start from the exercice 3 code

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(20),
          color: Colors.green[400],
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),),
                
              ),

              Container(
                child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ]
          ),
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blueGrey
              
            ),
            child: Center(
              child: Text("My Hobbies",style: TextStyle(color: Colors.white),),
            ),
          ),
          Container( 
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),        
            child: Center(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  width: 150,
                  margin: EdgeInsets.all(20) ,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text("Flutter",style: TextStyle(color: Colors.white),),
                  ),
                  
                ),
              Container(
                
                width: 150,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.amber,
                ),
                child: Center(
                  child: Text("Scocer",style: TextStyle(color: Colors.white),),
                ),

              ),
              
              ],
            )),
          ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  )
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
        
          
        ],
      ),
      
      
    ),
  ));
}

