import 'package:elmatbkh/CategoryGrid.dart';
import 'package:elmatbkh/FavoriteScreen.dart';
import 'package:elmatbkh/categoryCard.dart';
import 'package:elmatbkh/drawer.dart';
import 'package:flutter/material.dart';

class TabControllerScreen extends StatefulWidget {
  const TabControllerScreen({super.key});

  @override
  State<TabControllerScreen> createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen> {
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
          title: Text('ElMatbakh'), 
          backgroundColor: Colors.orange,
        ), 
        drawer: MainDrawer(),
         
        body: myPages[selectedTabIndex], 
        bottomNavigationBar: BottomNavigationBar( 
           
          items: [ 
            BottomNavigationBarItem( 
              icon: Icon(Icons.fastfood_rounded), 
              label: 'Categories'  
            ), 
            BottomNavigationBarItem( 
              icon: Icon(Icons.favorite_rounded), 
              label: 'Favorites' 
            ) 
          ], 
          currentIndex: selectedTabIndex, 
          onTap: switchPage, 
        )); 
}} 
