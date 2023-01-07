import 'package:flutter/material.dart';
import 'package:mealer/screen/categories_screen.dart';
import 'package:mealer/screen/favourite_screen.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 2, 
    child: Scaffold(
      
      appBar: AppBar(
              title: Text('Meal App'), 
              bottom: TabBar(
                tabs:[
                 Tab(icon: Icon(Icons.category),text: 'Categories'),
                  Tab(icon: Icon(Icons.star),text: 'Favourites'),
                 ],
             
             ),

      ),
      body:  TabBarView(
        children: [Categories_screen(),FavouriteScreen()]
      ),
    )
    );
    
  }
}