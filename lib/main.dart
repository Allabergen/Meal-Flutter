import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals',
      theme: ThemeData(
        primaryColor: Color(0xFFB32134),
        accentColor: Color(0xFFFFFDD0),
        canvasColor: Color(0xFFF5F5F5),
        fontFamily: 'JosefinSans',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Colors.black87),
              body2: TextStyle(color: Colors.black87),
              title: TextStyle(
                fontSize: 20.0,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.w600,
                color: Color(0xFF212121),
                shadows: [Shadow(color: Color(0xFFFFFDD0))],
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
