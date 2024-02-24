import 'recipe.dart';

var recipesList = [
  Recipe(
      id: 'r1',
      title: 'Fattoush',
      categoryId: ['c3'],
      difficulty: 1,
      ingredients: ['Lettuce', 'Tomato', 'Summac', 'Onion', 'Olive oil'],
      steps: 'Mix all together',
      isVegan: true,
      isVegeterian: true,
      imageURL:
          'https://assets.bonappetit.com/photos/57af6bea53e63daf11a4e565/16:9/w_1280,c_limit/fattoush.jpg'),
  Recipe(
      id: 'r2',
      title: 'Falafel',
      categoryId: ['c2', 'c3'],
      difficulty: 2,
      ingredients: ['Fava beans', 'Hummus', 'Spices', 'frying oil'],
      steps: 'Mix ingredients into balls and fry them',
      isVegan: true,
      isVegeterian: true,
      imageURL: 'https://www.delonghi.com/Global/recipes/multifry/195.jpg'),
  Recipe(
      id: 'r3',
      title: 'Chicken Alfredo',
      categoryId: ['c1'],
      difficulty: 2,
      ingredients: ['pasta', 'chicken', 'alredo sauce'],
      steps: 'Boil pasta, prepare chicken and pour sauce over',
      isVegan: false,
      isVegeterian: false,
      imageURL:
          'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/9/15/1/FNK_Chicken-Fettucine-Alfredo_s4x3.jpg.rend.hgtvcom.406.305.suffix/1442375396342.jpeg')
];
