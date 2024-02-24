import 'package:elmatbkh/CategoryGrid.dart';
import 'package:flutter/material.dart';

import 'kitchenScreen.dart';

void main() {
  runApp( MyApp());
}

// class MyApp extends StatelessWidget {
//    MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
   
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
//         useMaterial3: true,
//       ),
//       home: CategoryGrid(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: { 
        '/': (dummCtx) => CategoryGrid(), 
        '/kitchenRoute': (dummyCtx)=> KitchenScreen(), 
        }
    );
  }
}