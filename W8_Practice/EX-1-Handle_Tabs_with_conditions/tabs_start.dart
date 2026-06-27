// import 'package:first_project/W8-PRACTICE/EX-1-Handle%20Tabs%20with%20conditions/tabs_final.dart';
import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("Green Screen")),
    );
  }
}
class RedScreen extends StatelessWidget {
  const RedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text("Red Screen")),
    );
  }
}
class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text("Blue")),
    );
  }
}


enum AppTabs { red, green, blue }


class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppTabs CurrentScreen= AppTabs.red;
  void onBlue(){
    setState(() {
      CurrentScreen = AppTabs.blue;
    });
    
  }

  void onGreen(){
    setState(() {
      CurrentScreen = AppTabs.green;
    });
    
  }

  void onRed(){
    setState(() {
      CurrentScreen = AppTabs.red;
    });
    
  }

  Widget get content  {
    if (CurrentScreen==AppTabs.green){
      return  GreenScreen();
    }
    else if (CurrentScreen==AppTabs.red){
      return RedScreen();
    }
    else{
      return BlueScreen();
    }
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabs navigation")),
      body: content,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: onRed, icon: Icon(Icons.home,color: Colors.red,)),
            IconButton(onPressed: onBlue, icon: Icon(Icons.home,color: Colors.blue ,)),
            IconButton(onPressed: onGreen, icon: Icon(Icons.home,color: Colors.green,))
          ],
        ),
      ),
     
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}
