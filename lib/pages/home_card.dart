import 'package:flutter/material.dart';

import '../data/recipes_list.dart';
import '../widgets/recipe_card.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: recipesList.length,
        itemBuilder: (context, index) => HomeCard(
          recipe: recipesList[index],
        ),
      ),
    );
  }
}
