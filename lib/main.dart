import 'package:flutter/material.dart';
import 'package:navigation_grid_app/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 23),
        fontFamily: 'Raileway',
        
        // textTheme: ThemeData.light().textTheme.copyWith(
          // bodyText1: TextSaaaaatyle(color: Color.fromRGBO(20, 51, 51, 1),),
          // bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)
          // ),
          // titleMedium: TextStyle(
          //   fontSize: 24,
          //   fontFamily: 'RobotoCondensed',
          // ),
          
        // ),
      ),
      home: CategoriesScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Helloa'),
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}