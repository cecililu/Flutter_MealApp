import 'package:flutter/material.dart';
import 'package:mealer/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName='/meal-detail';
  
  MealDetailScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
   final mealId =ModalRoute.of(context)!.settings.arguments as String;
   final thismeal=DUMMY_MEALS.where((meal) => meal.id==mealId);
   
    return Scaffold(
        appBar: AppBar(
          title:   Text("s") ,
        ),
        body:  
    Container(
      child: Text(mealId)
    ));
  }
}