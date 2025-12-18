class Ingredient {
  String name;
  int quantity;
  String unit;
  Ingredient({required this.name, required this.quantity, required this.unit});
}

class Recipe {
  String imgLable;
  String imageUrl;
  String description;
  List<Ingredient> ingredients;

  // Constructor
  Recipe(this.imageUrl, this.imgLable, this.description, this.ingredients);

  static List<Recipe> samples =
  [
    Recipe('assets/images/Larb muang.webp', 
    'Larb muang (Thai chopped pork salad)', 
    'Garlic-fried pork mince, crispy shallots and spiced chillies make for the perfect Thai sharing salad. Serve with sticky rice and lettuce cups', 
    [
      Ingredient(name :'pork mince', quantity: 300 , unit:'g'),
      Ingredient(name :'coriander leaves chopped', quantity: 1 , unit:'handful'),
      Ingredient(name :'spring onions chopped', quantity: 2 , unit:''),
      Ingredient(name :'fish sauce', quantity: 2 , unit:'tbsp'),
      Ingredient(name :'pork stock', quantity: 1 , unit:'')
    ],
    ),

    Recipe('assets/images/Pad Thai.webp', 
    'Pad Thai', 
    'Put juicy king prawns to work in this classic pad Thai dish, which takes just half an hour. With crunchy beansprouts, roasted peanuts, zesty lime and chilli, this noodle dish is full of vibrant flavours and textures.', 
    [
      Ingredient(name :'Aubergines', quantity: 2 , unit:''),
      Ingredient(name :'Jungle curry paste', quantity: 2 , unit:'tbsp'),
      Ingredient(name :'Vegetable stock', quantity: 2 , unit:'cups'),
      Ingredient(name :'Kaffir lime leaves', quantity: 3 , unit:''),
      Ingredient(name :'Thai chilies', quantity: 2 , unit:''),
      Ingredient(name :'Fish sauce', quantity: 1 , unit:'tbsp'),
      Ingredient(name :'Thai basil', quantity: 1 , unit:'handful')
    ],
    ),

    Recipe('assets/images/Thai green fish curry.webp', 
    'Thai green fish curry', 
    'Perk up your midweek meal with flaky chunks of fish cooked in creamy coconut milk and mild thai green curry paste, ready in just 10 minutes', 
    [
      Ingredient(name :'Thai green curry paste', quantity: 2 , unit:'tbsp'),
      Ingredient(name :'tin coconut milk', quantity: 400 , unit:'g'),
      Ingredient(name :'sugar snap peas', quantity: 200 , unit:'g'),
      Ingredient(name :'skinless fish fillet', quantity: 400 , unit:'g'),
      Ingredient(name :'red chilli', quantity: 1 , unit:'')
    ],
    ), 
    

    Recipe('assets/images/Thai pumpkin curry.webp', 
    'Thai pumpkin curry (gaeng fak thong)', 
    'Make the most of seasonal pumpkins with this Thai curry, flavoured with dill, fish sauce and homemade red and green chilli paste.', 
    [
      Ingredient(name :'vegetable stock', quantity: 1 , unit:'litre'),
      Ingredient(name :'butternut squash', quantity: 500 , unit:'g'),
      Ingredient(name :'fine green beans', quantity: 100 , unit:'g'),
      Ingredient(name :'baby corn', quantity: 100 , unit:'g'),
      Ingredient(name :'onions', quantity: 2 , unit:''),
      Ingredient(name :'courgette', quantity: 1 , unit:''),
      Ingredient(name :'fish sauce', quantity: 4 , unit:'tbsp')
    ],
    )
  ];
}