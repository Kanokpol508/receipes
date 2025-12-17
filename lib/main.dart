import 'package:flutter/material.dart';
import 'package:receipes/mobel/receipe.dart';
import 'package:receipes/recipe_detail.dart';

void main() {
  runApp(const ReceipeApp());
}

class ReceipeApp extends StatelessWidget {
  const ReceipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculater'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  // Hendle recipe card tap
                  // print((Receipe.samples[index].imgLable));
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => RecipeDetail(recipe: Recipe.samples[index]),
                  ));
                },
                child: buildRecipeCard(Recipe.samples[index]),
                );  //Reuseฟังก์ชั่น
              },
            ),
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {   //ฟังก์ชั่นดีไซต์
    return Card(
      elevation: 2.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            SizedBox(height: 8.0),
            Text(
              recipe.imgLable, 
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }

}

