import 'package:flutter/material.dart';
import 'package:navigation_grid_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  // const CategoryItem({ Key? key }) : super(key: key);
  // CategoryItem({required this.title, required this.color, required this.id});
  CategoryItem(this.id, this.title, this.color);

  // 6
// pushNamed method for routes
  void selectedCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

//The first method .map pushes
  // void selectedCategory (BuildContext ctx){
  //   Navigator.of(ctx).push(
  //     MaterialPageRoute(builder:
  //     (_) {
  //     return CategoryMealsScreen(cateogryTitle: title, categoryId: id);
  //   },),);
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      focusColor: Colors.amber,
      child: Container(
        padding: EdgeInsets.all(25),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
