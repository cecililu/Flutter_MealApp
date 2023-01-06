import 'package:flutter/material.dart';

class CatergoryMealSceeen extends StatelessWidget {

  const CatergoryMealSceeen({super.key});
  static const routeName='/category-meals';
  @override
  Widget build(BuildContext context) {

    final routeArgs=ModalRoute.of(context)!.settings.arguments as Map <String,String>;   
    return  Scaffold(
         appBar: AppBar(title: Text(routeArgs['title'] as String),),
         body: ListView.builder(itemBuilder: ((context, index) {
          
        })));
  }
}
