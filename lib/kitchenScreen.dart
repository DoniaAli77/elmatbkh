import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/category.dart';
import 'recipeCard.dart';
import 'recipesList.dart';

class KitchenScreen extends StatefulWidget {
  //Go_router
  final Category? cat;
  KitchenScreen({required this.cat});

  @override
  State<KitchenScreen> createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<KitchenScreen> {
  bool vegeterianSwitch = false;

  bool veganSwitch = false;

  var prefs;

  Future<void> getSwitchStates() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      vegeterianSwitch = prefs.getBool('vgt') ?? false;
      veganSwitch = prefs.getBool('veg') ?? false;
    });
  }

  @override
  void initState() {
    getSwitchStates();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // NEW PARTS
    // final routeArgs =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, Category>;

    // final extractedCategory = routeArgs['category'];

    //Go_router
    final extractedCategory = widget.cat;

    final recipesInThatCategory = recipesList.where((element) {
      return element.categoryId.contains(extractedCategory!.id);
    }).toList();

    final filteredRecipes = recipesInThatCategory.where((element) {
      if (element.isVegeterian == false && vegeterianSwitch == true) {
        return false;
      } else if (element.isVegan == false && veganSwitch == true) {
        return false;
      } else
        return true;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(extractedCategory!.title),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return RecipeCard(rec: filteredRecipes[index]);
        },
        itemCount: filteredRecipes.length,
      ),
    );
  }
} 
 

// class KitchenScreen extends StatelessWidget {
//   Category category;
//   KitchenScreen({required this.category});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(category.title),
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Container(
//         child: Text('Kitchen page for ${category.title}'),
//       ),
//     );
//   }
// }
