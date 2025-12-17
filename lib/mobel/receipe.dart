class Recipe {
  String imgLable;
  String imageUrl;
  String detail;

  // Constructor
  Recipe(this.imageUrl, this.imgLable, this.detail);

  static List<Recipe> samples =
  [
    Recipe('assets/images/Larb muang.webp', 
    'Larb muang (Thai chopped pork salad)', 
    'Garlic-fried pork mince, crispy shallots and spiced chillies make for the perfect Thai sharing salad. Serve with sticky rice and lettuce cups' ),

    Recipe('assets/images/Pad Thai.webp', 
    'Pad Thai', 
    'Put juicy king prawns to work in this classic pad Thai dish, which takes just half an hour. With crunchy beansprouts, roasted peanuts, zesty lime and chilli, this noodle dish is full of vibrant flavours and textures.'),

    Recipe('assets/images/Thai green fish curry.webp', 
    'Thai green fish curry', 
    'Perk up your midweek meal with flaky chunks of fish cooked in creamy coconut milk and mild thai green curry paste, ready in just 10 minutes'),

    Recipe('assets/images/Thai pumpkin curry.webp', 
    'Thai pumpkin curry (gaeng fak thong)', 
    'Make the most of seasonal pumpkins with this Thai curry, flavoured with dill, fish sauce and homemade red and green chilli paste.')
  ];
}