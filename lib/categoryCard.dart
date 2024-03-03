import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'models/category.dart';

class CategoryCard extends StatelessWidget {
  //Go_router
  final Category cat;
  CategoryCard({required this.cat});

  //Go_router
  navigateToKitchenPageGorouter(BuildContext myContext) {
    myContext.goNamed('kitchen',extra:cat);
  }


  // navigateToKitchenPage(BuildContext myContext) {
  //   Navigator.of(myContext)
  //       .pushNamed('/kitchenRoute', arguments: {'category': cat});
  // }
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToKitchenPageGorouter(context),
      child: Container(
        child: Text(
          cat.title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.orangeAccent),
      ),
    );
  }
}



//class CategoryCard extends StatelessWidget {
//   final Category cat;

//   CategoryCard({required this.cat});

//   navigateToKitchenPage(BuildContext myContext) {
//     Navigator.of(myContext).push(MaterialPageRoute(builder: (ctxDummy) {
//       return KitchenScreen(category: cat);
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: ()=>navigateToKitchenPage(context),
//       child: Container(
        
//         child: Text(
//           cat.title,
//           style: TextStyle(color: Colors.white, fontSize: 20),
//         ),
//         padding: EdgeInsets.all(20),
//         margin: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15), color: Colors.orangeAccent),
//       ),
//     );
//   }
// }
