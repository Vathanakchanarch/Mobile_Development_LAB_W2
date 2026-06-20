// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/W7_Pra/3-GroceryApp-Start/models/grocery.dart';
import '../../../data/mock_grocery_data.dart';
// void main() {
//   runApp(GroceryForm());
// }

class GroceryForm extends StatefulWidget {
  const GroceryForm({super.key,required this.onSubmit});
  final Function(GroceryItem) onSubmit;
  @override
  State<GroceryForm> createState() => _GroceryFormState();
}

class _GroceryFormState extends State<GroceryForm> {
  String id = Random().nextInt(100).toString();
  String name = "";
  int quantity = 0;
  GroceryCategory category = GroceryCategory.other;
  void onSubmit() {
    GroceryItem groceryItem = GroceryItem(
      id: id,
      name: name,
      quantity: quantity,
      category: category,
    );
    // allGroceryItems.add(groceryItem);
    widget.onSubmit(groceryItem);
    Navigator.pop(context);

  }

  void reset() {
    setState(() {
      name = "";
      quantity = 0;

    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData.dark().copyWith(
    //     colorScheme: ColorScheme.fromSeed(
    //       seedColor: const Color.fromARGB(255, 147, 229, 250),
    //       brightness: Brightness.dark,
    //       surface: const Color.fromARGB(255, 42, 51, 59),
    //     ),
    //     scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
    //   ),
    // home:
    Scaffold(
      appBar: AppBar(title: Text("Add a New Item")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => name = value,
                decoration: InputDecoration(label: Text("Name")),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) => quantity = int.parse(value),
                      decoration: InputDecoration(label: Text("Quantity")),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        label: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: .end,
                children: [
                  ElevatedButton(onPressed: onSubmit, child: Text("Add Item")),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: reset, child: Text("Reset")),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    // );
  }
}

// The form shall be composed of 2 text fields:
// -	Name of the grocery item
//-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button
