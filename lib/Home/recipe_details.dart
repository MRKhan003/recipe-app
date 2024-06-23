import 'package:classtask/Lists/recipeList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeDetails extends StatefulWidget {
  final RecipeApp recipe;
  const RecipeDetails({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  @override
  _RecipeDetailsState createState() {
    return _RecipeDetailsState();
  }
}

int _sliderValue = 1;

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.recipe.recipeName,
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(
              image: AssetImage(
                widget.recipe.recipeImage,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.recipe.recipeName,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(7),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (context, index) {
                final Ingredients = widget.recipe.ingredients[index];
                return Text(
                    '${Ingredients.quantity * _sliderValue}, ${Ingredients.measure} ${Ingredients.name},');
              },
            ),
          ),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_sliderValue * widget.recipe.servings}',
            value: _sliderValue.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderValue = newValue.round();
              });
            },
            activeColor: Colors.yellow,
            inactiveColor: Colors.black,
          )
        ],
      )),
    );
  }
}
