import 'package:flutter/material.dart';

import 'models/category.dart';
import 'recipeCard.dart';
import 'recipesList.dart';

class KitchenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NEW PARTS
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>;

    final extractedCategory = routeArgs['category'];

    final recipesInThatCategory = recipesList.where((element) {
      return element.categoryId.contains(extractedCategory!.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(extractedCategory!.title),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return RecipeCard(rec: recipesInThatCategory[index]);
        },
        itemCount: recipesInThatCategory.length,
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
