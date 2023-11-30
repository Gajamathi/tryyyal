import 'package:flutter/material.dart';
import 'package:mealapp2/models/meals.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:mealapp2/widgets/meal_item_trait.dart';
class MealIteam extends StatelessWidget {
  const MealIteam({super.key, required this.meal,required this.onSelectMeal});
  final Meal meal;
  final void Function(Meal meal) onSelectMeal;
  String get ComplexityText {
    return meal.complexity.name[0].toLowerCase() +
        meal.complexity.name.substring(1);
  }

  String get AffordabilityText {
    return meal.affordability.name[0].toLowerCase() +
        meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation:2 ,
      child: InkWell(
    onTap:(){onSelectMeal(meal);},
    child: Stack(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            width: double.infinity,
            fit:BoxFit.fill ,
            height: 200,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MealItemTrait(
                            icon: Icons.schedule,
                            label: '${meal.duration} min',
                          ),
                          const SizedBox(
                            width: 12,),
                          
                          MealItemTrait(
                            icon: Icons.work,
                            label: ComplexityText ,
                          ),
                          const SizedBox(
                            width: 12,),
                          
                          MealItemTrait(
                            icon: Icons.attach_money,
                            label: AffordabilityText ,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
        ],
      ),
    ));
  }
}