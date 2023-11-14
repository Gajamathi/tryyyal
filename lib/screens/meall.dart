import 'package:flutter/material.dart';

import 'package:mealapp2/models/meals.dart';
import 'package:mealapp2/widgets/meal_iteam.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meal});
  final String title;
  final List<Meal> meal;

  @override
  Widget build(BuildContext context) {
    Widget content = Column(children: [
      if(meal.isEmpty)...[
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('uh oh nothing here......',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    )),
            const SizedBox(height: 16),
            Text('Try selecting a different category!',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    )),
          ],
        ),
<<<<<<< HEAD
      ); 
    if (meal.isNotEmpty) {
      content = ListView.builder(
     itemCount: meal.length,
      itemBuilder: (context, index) => MealIteam(meal: meal[index]),
    );
=======
      ),]
      else...[
        Expanded(
          child: ListView.builder(
            itemCount: meal.length,
            itemBuilder: (context, index) => Text(meal[index].title),
          ),
        )
      ]
    ]);
>>>>>>> d2c8c7554d029f3eb0cb9ac385c0c3042256163c

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: content);
  }
}
