import 'package:flutter/material.dart';
import 'package:receipes/mobel/receipe.dart';

class RecipeDetail extends StatelessWidget{
  // รับข้อมูลจาก main.dart
  final Recipe recipe;

  // ตัวสร้างที่มีพารามิเตอร์สูตรที่จำเป็น
  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')),
      body: Column(children: [
        Image(image: AssetImage(recipe.imageUrl)),
        SizedBox(height: 16.0),
        Text(recipe.imgLable, style: TextStyle(color: Colors.green, fontSize: 20),),
        SizedBox(height: 16.0),
        Text(recipe.detail, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black,), textAlign: TextAlign.center,),
        ]),
    );
  }
}