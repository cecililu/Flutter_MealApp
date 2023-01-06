import 'package:flutter/material.dart';
import 'package:mealer/dummy_data.dart';
import 'package:mealer/models/meal.dart';
import 'package:mealer/widgets/meal_item.dart';


class CatergoryMealSceeen extends StatelessWidget {
  const CatergoryMealSceeen({super.key});
  static const routeName='/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeArgs=ModalRoute.of(context)!.settings.arguments as Map <String,String>;   
    
    final categoryTitle=routeArgs['title'];
    
    final categoryId=routeArgs['id'];
    
    final selected_meals=DUMMY_MEALS.where((meal){
       return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
         appBar: AppBar(title: Text(routeArgs['title'] as String),),
         body: ListView.builder(itemBuilder: (context, index) {
              return MealItem(title:selected_meals[index].title,imageUrl:selected_meals[index].imageUrl ,affordibility:selected_meals[index].affordability ,complexity:selected_meals[index].complexity ,duration:selected_meals[index].duration,);
        },itemCount:selected_meals.length,
        
        )
        
        );
  }
}
