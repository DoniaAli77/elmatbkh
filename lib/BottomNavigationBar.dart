import 'package:elmatbkh/CategoryGrid.dart';
import 'package:elmatbkh/FavoriteScreen.dart';
import 'package:elmatbkh/drawer.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});
  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  final List<Widget> myPages = [CategoryGrid(), FavoriteScreen()];

  var selectedTabIndex = 0;

  void switchPage(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ElMatbakh'),
          backgroundColor: Colors.orange,
        ),
        drawer: MainDrawer(),
        body: myPages[selectedTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood_rounded), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded), label: 'Favorites')
          ],
          currentIndex: selectedTabIndex,
          onTap: switchPage,
        ));
  }
}
