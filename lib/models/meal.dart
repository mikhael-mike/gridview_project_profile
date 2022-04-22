import 'package:flutter/foundation.dart';

enum Complexity { simple, challenging, Hard }

enum Affordabillity {
  Affordable,
  Pricey,
  Luxurios,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> integriendents;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordabillity affordabillity;
  final bool isGultenFree;
  final bool isLacosteFree;
  final bool isVegan;
  final bool isVegetarian;

   Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.integriendents,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordabillity,
    required this.isGultenFree,
    required this.isLacosteFree,
    required this.isVegan,
    required this.isVegetarian,
  });
}
