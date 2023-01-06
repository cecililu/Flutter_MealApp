enum Complexity { Simple, Challenging, Hard }

enum Affordability { Affordable, Pricey, Luxorious }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final int duration;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegiterian;

Meal( 
    { 
      required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.steps,
      required this.complexity,
      required this.duration,
      required this.isLactoseFree,
      required this.affordability,
      required this.isGlutenFree,
      required this.isVegiterian,
      required this.isVegan,});
}
