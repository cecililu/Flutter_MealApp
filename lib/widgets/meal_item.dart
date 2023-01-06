import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mealer/models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordibility;

  const MealItem(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordibility});
  void selectMeal() {}
  String get complexityText{
   
   switch(complexity){
        case Complexity.Simple:
          return "Simple" ;
          break;
        case Complexity.Hard:
          return "Hard" ;
          break;
        case Complexity.Challenging:
          return "Challanging" ;
          break;
        default:
          return 'Unknown';

  
   }
  }
   String get cost{
   
   switch(affordibility){

        case Affordability.Affordable:
          return "Affordable" ;
          break;
        case Affordability.Luxurious:
          return "Luxorious" ;
          break;
        case Affordability.Pricey :
          return "Pricey" ;
          break;
        default:
          return 'Unknown';

  
   }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        elevation: 7,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.black54,
                    width: 220,
                    child: 
                      Text(
                        title,
                        style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.w600,),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [
                    Icon(Icons.schedule),
                    SizedBox(width: 20,),
                    Text(duration.toString()+' mins'),

                  ],),
                  Row(children: [
                    Icon(Icons.cases_outlined),
                    SizedBox(width: 20,),
                    Text(complexityText.toString()),
                    
                  ],),
                  Row(children: [
                    Icon(Icons.monetization_on),
                    SizedBox(width: 10,),
                    Text(cost.toString()),
                    
                  ],)
                ],),
            )
          ],
        ),
      ),
    );
  }
}
