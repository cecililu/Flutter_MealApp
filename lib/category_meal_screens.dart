import 'package:flutter/material.dart';

class CatergoryMealSceeen extends StatelessWidget {

  const CatergoryMealSceeen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(title: const Text("Category Screen"),),
        body:const  Center(
      child: Text('The recipies'),
    ));
  }
}
