import 'package:classtask/Home/recipe_details.dart';
import 'package:classtask/Lists/recipeList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My App",
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: RecipeApp.recipeList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return RecipeDetails(recipe: RecipeApp.recipeList[index]);
                },
              ));
            },
            child: buildCard(
              context,
              RecipeApp.recipeList[index],
              index,
            ),
          );
        },
      ),
    );
  }

  Widget buildCard(BuildContext context, RecipeApp app, int index) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(
              app.recipeImage,
            ),
          ),
          Text(
            app.recipeName,
          ),
        ],
      ),
    );
  }
}
