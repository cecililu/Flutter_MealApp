import 'package:flutter/material.dart';

class CatergoryMealSceeen extends StatelessWidget {
  final String categoryId;
  final String categorytitle;
  
  const CatergoryMealSceeen({super.key, required this.categoryId, required this.categorytitle});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(title: Text(categorytitle),),
        body: Center(
      child: Text(categorytitle+'  recipies'),
     
    ));
  }
}
