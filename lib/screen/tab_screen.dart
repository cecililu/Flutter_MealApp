import 'package:flutter/material.dart';
import 'package:mealer/screen/categories_screen.dart';
import 'package:mealer/screen/favourite_screen.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List <Widget>_pages=[
Categories_screen(),FavouriteScreen()
  ];
 int _selectedPageIndex=0;
  void _selectPage(int index){
    setState(() {
      _selectedPageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
              title: Text('Meal App'), 
              // bottom: TabBar(
              //   unselectedLabelColor: Color.fromARGB(255, 26, 151, 32),
              //   // tabs:[
              //   //  Tab(icon: Icon(Icons.category),text: 'Categories'),
              //   //   Tab(icon: Icon(Icons.star),text: 'Favourites'),
              //   //  ],
             
             ),   
      body: _pages[_selectedPageIndex],
      bottomNavigationBar:BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.red,
        items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Main"
              ),
         BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: "Favourite"
          ),
        ]
        ) ,  
    );
  }
}