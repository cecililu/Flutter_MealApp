import 'package:flutter/material.dart';

class CatergoryMealSceeen extends StatelessWidget {
  // final String categoryId;
  // final String categorytitle;
  
  // const CatergoryMealSceeen({super.key, required this.categoryId, required this.categorytitle});

  @override
  Widget build(BuildContext context) {
    
    final routeArgs=ModalRoute.of(context)!.settings.arguments as Map <String,String>;
    
    return  Scaffold(
         appBar: AppBar(title: Text(routeArgs['title'] as String),),
        body: Center(
      child: Text('${routeArgs['title']}  recipies'),
     
    ));
  }
}
