

import 'package:flutter/material.dart';
import 'package:mealer/screen/category_meal_screens.dart';

class Categoryitem extends StatelessWidget {
  
  final String id;
  final Color color;
  final String title;
  const Categoryitem({super.key, required this.title, required this.color, required this.id});
  

void selectCategory(context){
      Navigator.of(context).pushNamed('/category-meals', arguments:{"id":id,"title":title} );    
  }  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectCategory(context),
      splashColor: Colors.red,
      borderRadius: BorderRadius.circular(15),
      child:
        Container(    
            padding: const EdgeInsets.all(15),
            child: Text(title,style:Theme.of(context).textTheme.headline1,),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color.withOpacity(0.7), color],
                  begin: Alignment.topLeft,
                  end: Alignment.topCenter),
              borderRadius: BorderRadius.circular(12),
            )),
    
    );
  }
}
