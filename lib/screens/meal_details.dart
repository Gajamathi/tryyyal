import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mealapp2/models/meals.dart';

class MealDetailsScreen extends StatelessWidget{
   const MealDetailsScreen({super.key,
   required this.meal,});
   final Meal meal;
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body:Image.network(
        meal.imageUrl,
        height: 300,
      width: double.infinity,
      fit: BoxFit.cover,)
    );
  }
}