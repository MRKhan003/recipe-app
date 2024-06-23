class RecipeApp {
  String recipeName, recipeImage;
  int servings;
  List<Ingredients> ingredients;
  RecipeApp(this.recipeName, this.recipeImage,this.servings,this.ingredients,);
  static List<RecipeApp> recipeList = [
    RecipeApp("Cookies", "assets/cookies.jpeg",4,[Ingredients(3, 'Slices', "Tomatoe"),Ingredients(0.25,"Kg","Chicken"),Ingredients(2,"Slices","Cheese")],),
    RecipeApp("Pizza", "assets/pizza.jpeg",2,[Ingredients(3, 'Slices', "Tomatoe"),Ingredients(0.25,"Kg","Chicken"),Ingredients(2,"Slices","Cheese")],),
    RecipeApp("Sandwich 1", "assets/sandwich.jpeg",3,[Ingredients(3, 'Slices', "Tomatoe"),Ingredients(0.25,"Kg","Chicken"),Ingredients(2,"Slices","Cheese")],),
    RecipeApp("Spegheties", "assets/spegheties.jpeg",1,[Ingredients(3, 'Slices', "Tomatoe"),Ingredients(0.25,"Kg","Chicken"),Ingredients(2,"Slices","Cheese")],),
  ];
}

class Ingredients {
  double quantity;
  String measure;
  String name;
  Ingredients(this.quantity, this.measure, this.name);
}
