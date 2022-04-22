import 'package:flutter/material.dart';
import 'package:navigation_grid_app/category_item.dart';
import 'package:navigation_grid_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text('Delimeal')),
      body: 
    GridView(
      padding: EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((catData) => 
            CategoryItem(catData.id, catData.title, catData.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    ),
    ); 
  }
}
