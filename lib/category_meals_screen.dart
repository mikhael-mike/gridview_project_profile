import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

  static const routeName = '/category-meals';

  // final String cateogryTitle;
  // final String categoryId;

  // const CategoryMealsScreen({ Key? key, required this.cateogryTitle, required this.categoryId }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final cateogryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text('The recipes for the category!'),
      ),
    );
  }
}