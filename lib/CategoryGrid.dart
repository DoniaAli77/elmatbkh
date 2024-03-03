import 'package:flutter/material.dart';

import 'categoryCard.dart';
import 'categorylist.dart';

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        children: categoriesList.map((c) {
          return CategoryCard(cat: c);
        }).toList() 
    );
  }
}
