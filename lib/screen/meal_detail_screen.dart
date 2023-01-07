import 'package:flutter/material.dart';
import 'package:mealer/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;

    final thismeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    
    return  SingleChildScrollView(
        child: Container(
          color: Colors.green[400],
          child: Column(
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
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.white))),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(1),
                  child: ListView.builder(
                    itemBuilder: (ctx, ind) {
                      return ListTile(
                        leading: CircleAvatar(
                            child: Text((ind + 1).toString(),
                                style: TextStyle(fontSize: 15)),
                            radius: 12),
                        title: Text(thismeal.ingredients[ind]),
                      );
                    },
                    itemCount: thismeal.ingredients.length,
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text('Steps',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white)),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(1),
                  child: ListView.builder(
                    itemBuilder: (ctx, ind) {
                      return ListTile(
                        leading: CircleAvatar(
                            child: Text((ind + 1).toString(),
                                style: TextStyle(fontSize: 15)),
                            radius: 12),
                        title: Text(thismeal.steps[ind]),
                      );
                    },
                    itemCount: thismeal.steps.length,
                  ))
            ],
          ),
        ),
      );
    
  }
}
