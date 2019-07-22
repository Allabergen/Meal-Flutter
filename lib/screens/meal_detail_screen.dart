import 'package:flutter/material.dart';
import 'package:meals_flutter/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    Widget buildSectionTitle(BuildContext context, String text) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.title,
        ),
      );
    }

    Widget buildContainer(Widget child) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.symmetric(horizontal: 32.0),
        padding: EdgeInsets.all(8.0),
        height: 200.0,
        width: double.infinity,
        child: child,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 300.0,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '# ${(index + 1)}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        selectedMeal.steps[index],
                      ),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
