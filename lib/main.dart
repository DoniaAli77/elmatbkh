import 'package:elmatbkh/CategoryGrid.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'kitchenScreen.dart';
import 'models/category.dart';

void main() {
  runApp(MyApp());
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
//       initialRoute: '/',
//       routes: {
//         '/': (dummCtx) => CategoryGrid(),
//         '/kitchenRoute': (dummyCtx)=> KitchenScreen(),
//         }
//     );
//   }
// }
final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => CategoryGrid()),
  GoRoute(
      name: 'kitchen',
      path: '/kitchenRoute',
      builder: (context, state) {
        return KitchenScreen(cat: state.extra as Category);
      })
]);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
          useMaterial3: true,
        ),
        routerConfig: router);
  }
}
