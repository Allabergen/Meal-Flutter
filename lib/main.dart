import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'categories_screen.dart';

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
        primarySwatch: Colors.red,
      ),
      home: CategoriesScreen(),
    );
  }
}
