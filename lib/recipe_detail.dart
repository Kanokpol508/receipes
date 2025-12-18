import 'package:flutter/material.dart';
import 'package:receipes/mobel/receipe.dart';

class RecipeDetail extends StatefulWidget {
  Recipe recipe;
  RecipeDetail({super.key, required this.recipe});

  @override
  State<StatefulWidget> createState() {
    return RecipeDetailState(); 
  }
}

class RecipeDetailState extends State<RecipeDetail> {
  int sliderValue = 1;

  @override
    Widget build(BuildContext context) {
      
      return Scaffold(
        appBar: AppBar(title: const Text('Recipe Detail')),
        body: Column(
          children: [
            Image(image: AssetImage(widget.recipe.imageUrl)),
            const SizedBox(height: 16.0),
            Text(
              widget.recipe.imgLable,
              style: const TextStyle(color: Colors.green, fontSize: 20),
            ),


            const SizedBox(height: 16.0),
            Text(
              widget.recipe.description,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),


              textAlign: TextAlign.center,
            ),


            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                    '${ingredient.quantity*sliderValue} ${ingredient.unit} ${ingredient.name}',
                    style: const TextStyle(fontSize: 16.0),
                  );
                },
              ),
            ),


            Slider(
              min: 1.0,
              max: 10.0,
              divisions: 10,
              label: '${(sliderValue)} servings',
              value: sliderValue.toDouble(),

              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue.toInt();
                });
              },
            ),
          ],
        ),
      );
    }
}  

  

