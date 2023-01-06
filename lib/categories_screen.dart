import 'package:flutter/material.dart';

class Categories_screen extends StatefulWidget {
  const Categories_screen({super.key});

  @override
  State<Categories_screen> createState() => _Categories_screenState();
}

class _Categories_screenState extends State<Categories_screen> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: [
         
      ],
    );
  }
}
