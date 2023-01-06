import 'package:flutter/material.dart';
import 'package:mealer/category_item.dart';
import './dummy_data.dart';

class Categories_screen extends StatefulWidget {

  
  const Categories_screen({super.key});

  @override
  State<Categories_screen> createState() => _Categories_screenState();

}

class _Categories_screenState extends State<Categories_screen> {
 
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEnableOpenDragGesture: false,
        drawer: Drawer(),
        appBar: AppBar(
          title: const Text('Meal App',
          style: TextStyle(fontFamily: 'Raleway', fontSize: 20),
          ),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: Dummy.map((categoryData) {
            return Categoryitem(id:categoryData.id,
                title: categoryData.title, color: categoryData.color);
          }).toList(),
        ));
  }
}
