import 'package:flutter/material.dart';

import 'recipe.dart';

class RecipeCard extends StatelessWidget {
  Recipe rec;
  RecipeCard({required this.rec});
  void goToSpecificRecipe() {}
  String getDifficulty(int diff) {
    if (diff == 1) {
      return 'Easy';
    } else if (diff == 2) {
      return 'Medium';
    } else
      return 'Hard';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: goToSpecificRecipe,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            // child 1 of column is image + title
            Stack(
              children: [
// child 1 of stack is the recipe image
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    rec.imageURL,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
// child 2 of stack is the recipe title
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Container(
                      color: Colors.black38,
                      child: Center(

                          //color: Colors.black38,
                          child: Text(
                        rec.title,
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        style: TextStyle(color: Colors.white, fontSize: 30),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  bottom: 0,
                )
              ],
            ),

            // child 2 of colum is the white row
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(getDifficulty(rec.difficulty)),
                  Text(rec.isVegan ? 'Vegan' : 'Non-Vegan'),
                  Text(rec.isVegeterian ? 'Vegeterian' : 'NonVegeterian')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
