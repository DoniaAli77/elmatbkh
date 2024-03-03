import 'package:elmatbkh/CategoryGrid.dart';
import 'package:elmatbkh/FavoriteScreen.dart';
import 'package:elmatbkh/categoryCard.dart';
import 'package:flutter/material.dart';

class TabControllerScreen extends StatefulWidget {
  const TabControllerScreen({super.key});

  @override
  State<TabControllerScreen> createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text('El Matbkh'),
        backgroundColor: Colors.orangeAccent,
        bottom: TabBar(tabs: [
          Tab(
            icon: Icon(Icons.fastfood_rounded)
          ),
          Tab(
            icon: Icon(Icons.favorite_rounded)
          )
        ]),
      ),
      body: TabBarView(children: [CategoryGrid(),FavoriteScreen()]),

    ));
  }
}
