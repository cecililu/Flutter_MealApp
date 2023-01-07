import 'package:flutter/material.dart';
import 'package:mealer/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final thismeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
        appBar: AppBar(
          title: Text(thismeal.title),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                thismeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
                child: Text('Ingredients',
                    style: Theme.of(context).textTheme.headline1)
                    ),
              Container(
                decoration: BoxDecoration(color:Colors.white,border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(15)),
                height: 200,
                width: 350,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(1),
                child: ListView.builder(itemBuilder: (ctx,ind){
                  return Card(
                    margin:EdgeInsets.all(10) ,
                    elevation: 10,
                    color: Colors.green[500],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: 
                        Text(thismeal.ingredients[ind]),
                      
                    ),
                  );
                },itemCount: thismeal.ingredients.length,))
          ],
        ));
  }
}
