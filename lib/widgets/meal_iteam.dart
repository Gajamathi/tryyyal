import 'package:flutter/material.dart';
import 'package:mealapp2/models/meals.dart';
import 'package:transparent_image/transparent_image.dart';
class MealIteam extends StatelessWidget{
  const MealIteam({super.key,required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    
    return Card(child: InkWell(
    onTap:(){},
    child: Stack(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black38,
              padding:const EdgeInsets.symmetric(vertical: 6,horizontal: 44),
              child: Column(
                children: [
                  Text(
                      meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style:const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                   const Row(children: [],),
                    
                  ],),
                ),
              )
        ],
      ),
    ));
  }
}
