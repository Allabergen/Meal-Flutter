import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_flutter/screens/tabs_screen.dart';

import './screens/meal_detail_screen.dart';
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
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.name);
      //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      // },
      // onUnknownRoute: (settings) { // like 404 page you can show to user
      //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      // },
    );
  }
}
