// ---------------------------------------------
// Create a new stateless widget : GroceryTile
// ---------------------------------------------
import 'package:flutter/material.dart';
import 'package:myapp/W6_Practice/Ex1_theory.dart';
import '../../../models/grocery.dart';

class GroceryTile extends StatelessWidget {
  const GroceryTile({super.key, required this.geoceryItem});
  final GroceryItem geoceryItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(width: 15,height: 15,color: geoceryItem.category.color,),
        title: Text(geoceryItem.name),
        trailing: Text(geoceryItem.quantity.toString()),
      ),
    );
  }
}

// The widget shall take as required parameter a Grocery  

// 	Use a ListTile widget to layout the elements


// https://api.flutter.dev/flutter/material/ListTile-class.html