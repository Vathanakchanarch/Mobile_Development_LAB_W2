import 'package:flutter/material.dart';
import 'package:myapp/W7_Pra/3-GroceryApp-Start/models/grocery.dart';
import 'package:myapp/W7_Pra/3-GroceryApp-Start/ui/screens/groceries/grocery_form.dart';
import 'package:myapp/W7_Pra/3-GroceryApp-Start/ui/screens/groceries/grocery_tile.dart';
import '../../../data/mock_grocery_data.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});
  

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  void addItem(GroceryItem item) {
  setState(() {
    allGroceryItems.add(item);
  });}
  void onCreate(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context)=> GroceryForm(onSubmit: addItem ,));
    // ---------------------------------------------
    // Navigate to the form screen using showModalBottomSheet
    // ---------------------------------------------

    // https://api.flutter.dev/flutter/material/showModalBottomSheet.html
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No items added yet.'));

    if (allGroceryItems.isNotEmpty) {
      content = Container(
        child: ListView.builder(
          itemCount: allGroceryItems.length,
          itemBuilder: (content,i) => GroceryTile(geoceryItem: allGroceryItems[i]),
        )
      );
      // ---------------------------------------------
      //  Loop on groceries with an ListView builder
      //  For each grocery items, create a GroceryTile (grocery_tile.dart)
      // ---------------------------------------------
      // https://api.flutter.dev/flutter/widgets/ListView-class.html
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [IconButton(onPressed: () => onCreate(context), icon: const Icon(Icons.add))],
      ),
      body: content,
    );
  }
}
