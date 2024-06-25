import 'package:flutter/material.dart';
import 'package:cooking_club/models/recipe.dart';
import 'package:cooking_club/utils/recipe_search_delegate.dart';
import 'package:cooking_club/pages/recipe_detail.dart';
import 'package:cooking_club/pages/my_favorites.dart';

class RecipeListPage extends StatefulWidget {
  final List<Recipe> favoriteRecipes;
  final Function(Recipe) addFavorite;
  final Function(Recipe) removeFavorite;

  RecipeListPage({
    required this.favoriteRecipes,
    required this.addFavorite,
    required this.removeFavorite,
  });

  @override
  _RecipeListPageState createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  List<Recipe> recipes = [
    // Breakfast recipes
    Recipe(
      title: 'Dosa',
      imageUrl: 'assets/1.jpeg',
      category: 'Breakfast',
  ingredients: [
  '1 cup urad dal',
  '¼ cup chana dal',
  '1 tsp methi / fenugreek seeds',
  '3 cup sona masuri rice',
  '1 cup poha, thin',
  'water, for soaking',
  '2 tsp salt',
  'oil, for roasting'
  ],
  instructions: [
  'Firstly, in a large bowl take 1 cup urad dal, ¼ cup chana dal and 1 tsp methi.',
  'Rinse with water and soak for 3 hours.',
  'In another bowl rinse and soak 3 cup sona masuri rice for 5 hours.',
  'Drain off the urad dal and transfer to the grinder. You can use mixi if you are comfortable.',
  'Grind to smooth paste adding water as required.',
  ],

    ),
    Recipe(
      title: 'Idli',
      imageUrl: 'assets/2.jpeg',
      category: 'Breakfast',
      ingredients: [
            '2 tbsp ghee',
            '10 cashew, halves',
            '1 tsp mustard',
            '½ tsp urad dal',
            '½ tsp chana dal',
            '½ tsp cumin',
            '½ tsp eno fruit salt',

      ],
      instructions: [
            'Firstly, in a pan heat 2 tbsp ghee and roast 10 cashews.'
            'Roast on low flame until the cashew turns golden brown. keep aside.'
            'In the same ghee, add 1 tsp mustard, ½ tsp urad dal, ½ tsp chana dal, ½ tsp cumin, few curry leaves and pinch hing. splutter the tempering.'
            'Add 2 chilli, and 1 inch ginger, and saute slightly.'
            'Now add 1 cup rava and roast on low flame until the rava turns aromatic.'
            'Cool completely and transfer to the large bowl.'
            'Add 1 cup curd and ½ tsp salt. mix well making sure everything is well combined.'

      ],
    ),
    Recipe(
      title: 'Idli Vada',
      imageUrl: 'assets/3.jpeg',
      category: 'Breakfast',
      ingredients: [
            '2 tbsp ghee',
            '10 cashew, halves',
            '1 tsp mustard',
            '½ tsp urad dal',
            '½ tsp chana dal',
            'few curry leaves'],
      instructions: [
        'Firstly, in a pan heat 2 tbsp ghee and roast 10 cashews.',
            'Roast on low flame until the cashew turns golden brown. keep aside.'
            'In the same ghee, add 1 tsp mustard, ½ tsp urad dal, ½ tsp chana dal, ½ tsp cumin, few curry leaves and pinch hing. splutter the tempering.'
            'Cool completely and transfer to the large bowl.',
            'Add 1 cup curd and ½ tsp salt. mix well making sure everything is well combined.'],
    ),
    Recipe(
      title: 'Poori',
      imageUrl: 'assets/4.jpeg',
      category: 'Breakfast',
      ingredients: ['3 aloo / potato, boiled',
          '2 cup wheat flour / atta',
          '2 tbsp rava / semolina, fine',
          '¼ tsp turmeric',
          '½ tsp chilli powder',
          '½ tsp cumin powder',
          'oil, for frying'
            ],
      instructions: ['also add ¼ tsp turmeric, ½ tsp chilli powder, ½ tsp cumin powder, ½ tsp garam masala, ¼ tsp ajwain, 1 tsp kasuri methi and ½ tsp salt.'
          'mix well making sure all the spices are well combined.',
          'further, add mashed 3 potatoes and mix well.',
          'add water and start to knead the dough.'
          'make sure to knead the dough adding water as required. also note that aloo will release the moisture, so add water accordingly.',
          'knead to a smooth and tight dough.',
          'also, add 2 tbsp oil and knead the dough.'],
    ),
    Recipe(
      title: 'Vada',
      imageUrl: 'assets/5.jpeg',
      category: 'Breakfast',
      ingredients: [
               '2 cup water',
               '½ tsp salt',
              '1 tsp oil',
              '1½ cup rava / semolina / suji, fine',
              '1 tsp cumin',
             'oil, for frying'],
      instructions: [
        'firstly, in a large kadai take 2 cup water, ½ tsp salt and 1 tsp oil.',
         'mix well and get to a boil.',
        'once the water starts to boil, add 1½ cup rava stirring continuously.',
        'keep stirring until the rava absorbs the water.',
        'cover and simmer for 2 minutes or until the rava is cooked well.',
        'also add 1 tsp cumin, ½ tsp pepper, few curry leaves, 2 chilli, 2 tbsp coriander and 2 tbsp lemon juice.',
        'mix well making sure everything is well combined.'],
    ),
    Recipe(
      title: 'Poha',
      imageUrl: 'assets/6.jpeg',
      category: 'Breakfast',
      ingredients: [
        '2 cup poha, thick',
        'water, for rinsing',
        '¼ tsp turmeric',
         '2 tbsp sugar',
        '1 tsp salt',
        '1 tbsp cumin',
      ],
      instructions: [  'Firstly, to prepare indori poha masala, in a pan take 2 tsp coriander seeds, 2 tsp cumin seeds, 2 tsp fennel seeds, ½ tsp pepper, ½ tsp cloves, 1 inch cinnamon, ½ nutmeg and 2 bay leaf.'
          'Saute on low flame until the spices turn aromatic.',
          'Cool completely, and transfer to the mixi jar.',
          'Add 2 tsp chilli powder, ½ tsp turmeric, 2 tsp aamchur, 1 tsp kala namak, pinch hing, 2 tsp sugar and ½ tsp salt.',
          'Grind to fine powder. you can store the indori poha masala in an airtight container.',
          'To prepare the poha, in a large bowl take 2 cup poha.',
          'Rinse with water making sure not to soak the poha.',
          'Drain off the poha, add ¼ tsp turmeric.'],
    ),
    // Snacks recipes
    Recipe(
      title: 'Samosa',
      imageUrl: 'assets/11.jpeg',
      category: 'Snacks',
      ingredients: ['2 cup maida',
  '2 tbsp corn flour',
  '½ tsp salt',
  '2 cup water',
  '2 onion, sliced',
  '1 cup poha / avalakki / flattened rice, thin',
  '1 chilli, finely chopped',
  ],
      instructions: ['how to make homemade patti sheets for irani samosa:',
          'firstly, in a large bowl take 2 cup maida, 2 tbsp corn flour and ½ tsp salt.',
          'add 2 to 2½ cup water and mix well using a whisk.',
          'whisk until a smooth lump-free batter is formed adding water as required.',
          'now grease the pan and pour a ladleful of batter on a hot pan.',
          'swirl once making sure the batter is uniformly spread.',
          'cook for a minute or until the sheet is cooked without browning.',
          'now flip over gently and continue to cook.'],
    ),
    Recipe(
      title: 'Pakoda',
      imageUrl: 'assets/22.jpeg',
      category: 'Snacks',
      ingredients: ['200 grams paneer'
          '1 cup besan / gram flour',
          '2 tbsp rice flour',
          '¼ tsp turmeric',
          '½ tsp chilli powder'
      ],
      instructions: [
            'Firstly, in a large bowl take 1 cup besan',
            '2 tbsp rice flour, ¼ tsp turmeric',
             ' ½ tsp chilli powder, ¼ tsp ajwain',
             '1 tsp ginger garlic paste',
             '½ tsp salt, pinch hing and 2 tbsp coriander.',
            'Add water and whisk smooth.',
            'Prepare a smooth lump free thick batter.',
            'Now add ½ tsp baking powder and mix well.',
            'Take small pieces of paneer slices and dip them in batter.'],
    ),
    Recipe(
      title: 'Mirchi Bajji',
      imageUrl: 'assets/33.jpeg',
      category: 'Snacks',
      ingredients: ['4 green chilli, large'
          '2 cup gram flour / besan',
          '2 tbsp rice flour',
          '¼ tsp ajwain / carom seeds',
          '¼ tsp baking soda',
          '½ tsp salt',
          'oil for frying'
      ],
      instructions: [
    'firstly, take long green chilis and slit at the centre and remove seeds.',
    'now add ½ cup of water and mix well.',
    'add water as required and prepare a lump free thick batter.',
   'further pour 1 tbsp of hot oil over the batter and mix well.',
    'mix well to smooth and silky batter.'
      ],
    ),
    Recipe(
      title: 'French Fries',
      imageUrl: 'assets/44.jpeg',
      category: 'Snacks',
      ingredients: [
          '4 large potato, maris piper',
          'cold water, for rinsing',
          'oil, for frying',
          '½ tsp chilli powder',
          '½ tsp salt',
      ],
      instructions: [
          'firstly, peel the skin of potato. recommend using maris piper potatoes as they have creamy white flesh and fluffy texture.',
          'cut into 1 cm thick sticks.',
          'rinse in ice cold water until the starch runs out clean.',
          'pat dry in kitchen towel to remove excess moisture.',
          'now deep fry in hot oil. make sure the oil is approximately 140 degree celcius.',
          'deep fry for 6 minutes or until the potatoes turn tender. they will not go brown at this stage.'],
    ),
    Recipe(
      title: 'Misal Pav',
      imageUrl: 'assets/55.jpeg',
      category: 'Snacks',
      ingredients: [
            '¼ tsp turmeric',
            '½ tsp salt',
            '1 cup water',
            '2 tsp oil',
            '2 inch ginger, roughly chopped',
            '1 onion, finely chopped',
            '6 pav',
            '1 lemon, quarter'

      ],
      instructions: [
          'firstly, in a large kadai heat 3 tbsp oil and splutter 1 tsp mustard, 1 tsp jeera and few curry leaves.',
          'also add ¼ tsp turmeric, 1 tsp chilli powder, 1 tsp coriander powder and 1 tsp garam masala.',
          'saute on low flame till spices turn aromatic.',
          'now add in prepared masala paste and saute well.',
          'cook till the oil is released from masala paste.',
          'add in cooked matki, small piece jaggery and ½ tsp salt. give a good mix.',
          'also add 5 cup water and adjust consistency.'],
    ),

    // Rice recipes
    Recipe(
      title: 'Veg Biriyani',
      imageUrl: 'assets/a1.jpeg',
      category: 'Rice',
      ingredients: ['1 bunch palak',
        '4 cloves garlic' ,
        ' 2 inch ginger ',
        '3 chilli'],
      instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
        ' Boil for 2 minutes or until the palak is blanched',
        'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
        'Squeeze the water from the palak, and transfer to the mixer jar',
        'Add 4 cloves garlic',
        '2 inch ginger and 3 chilli',
        'Grind to fine paste without adding water keep aside',
        'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
    ),
    Recipe(
      title: 'Pulao',
      imageUrl: 'assets/a2.jpeg',
      category: 'Rice',
      ingredients: ['1 bunch palak',
        '4 cloves garlic' ,
        ' 2 inch ginger ',
        '3 chilli'],
      instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
        ' Boil for 2 minutes or until the palak is blanched',
        'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
        'Squeeze the water from the palak, and transfer to the mixer jar',
        'Add 4 cloves garlic',
        '2 inch ginger and 3 chilli',
        'Grind to fine paste without adding water keep aside',
        'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
    ),
    Recipe(
      title: 'Jeera Rice',
      imageUrl: 'assets/a3.jpeg',
      category: 'Rice',
      ingredients: ['1 bunch palak',
        '4 cloves garlic' ,
        ' 2 inch ginger ',
        '3 chilli'],
      instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
        ' Boil for 2 minutes or until the palak is blanched',
        'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
        'Squeeze the water from the palak, and transfer to the mixer jar',
        'Add 4 cloves garlic',
        '2 inch ginger and 3 chilli',
        'Grind to fine paste without adding water keep aside',
        'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
    ),
    Recipe(
      title: 'Lemon Rice',
      imageUrl: 'assets/a4.jpeg',
      category: 'Rice',
      ingredients: ['1 bunch palak',
        '4 cloves garlic' ,
        ' 2 inch ginger ',
        '3 chilli'],
      instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
        ' Boil for 2 minutes or until the palak is blanched',
        'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
        'Squeeze the water from the palak, and transfer to the mixer jar',
        'Add 4 cloves garlic',
        '2 inch ginger and 3 chilli',
        'Grind to fine paste without adding water keep aside',
        'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
    ),
    Recipe(
      title: 'Curd Rice',
      imageUrl: 'assets/a5.jpeg',
      category: 'Rice',
      ingredients: ['1 bunch palak',
      '4 cloves garlic' ,
      ' 2 inch ginger ',
      '3 chilli'],
      instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
        ' Boil for 2 minutes or until the palak is blanched',
        'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
        'Squeeze the water from the palak, and transfer to the mixer jar',
        'Add 4 cloves garlic',
        '2 inch ginger and 3 chilli',
        'Grind to fine paste without adding water keep aside',
        'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
    ),
    Recipe(
      title: 'Puliyogre',
      imageUrl: 'assets/a6.jpeg',
      category: 'Rice',
      ingredients: ['1 bunch palak',
        '4 cloves garlic' ,
        ' 2 inch ginger ',
        '3 chilli'],
      instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
        ' Boil for 2 minutes or until the palak is blanched',
        'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
        'Squeeze the water from the palak, and transfer to the mixer jar',
        'Add 4 cloves garlic',
        '2 inch ginger and 3 chilli',
        'Grind to fine paste without adding water keep aside',
        'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
    ),
    // Veg Curry recipes



    Recipe(
      title: 'Kaju Curry',
      imageUrl: 'assets/b1.jpeg',
      category: 'Veg Curry',
      ingredients: [ '2 tbsp oil',
                     '1 tsp cumin',
                     '1 tsp mustard',
                     'few curry leaves',
                     '1 onion, finely chopped',
                     '1 tsp ginger garlic paste',
                     '2 tomato, chopped',
                     '1 potato, chopped',
                     '1 carrot, chopped'],
      instructions: [
                     'firstly, to prepare the masala paste, in a mixer jar take ¾ cup coconut, 2 tbsp cashew and 2 tbsp vegetable masala',
                     'grind to smooth paste adding ½ cup water. keep aside',
                     'in a large kadai heat 2 tbsp oil, add 1 tsp cumin, 1 tsp mustard and few curry leaves. splutter the tempering',
                     'now add 1 onion, 1 tsp ginger garlic paste and saute until golden brown',
                     'further, add 2 tomato and saute until they turn soft and mushy',
                     'add 1 potato, 1 carrot, ½ capsicum, 5 beans, 2 tbsp peas and 2 tbsp sweet corn.'],
    ),
    Recipe(
      title: 'Paneer Maasala',
      imageUrl: 'assets/b2.jpeg',
      category: 'Veg Curry',
      ingredients: [ '2 tbsp oil',
          '1 tsp cumin',
          '1 tsp mustard',
          'few curry leaves',
          '1 onion, finely chopped',
          '1 tsp ginger garlic paste',
          '2 tomato, chopped',
          '1 potato, chopped',
          '1 carrot, chopped'],
      instructions: [
        'firstly, to prepare the masala paste, in a mixer jar take ¾ cup coconut, 2 tbsp cashew and 2 tbsp vegetable masala',
        'grind to smooth paste adding ½ cup water. keep aside',
        'in a large kadai heat 2 tbsp oil, add 1 tsp cumin, 1 tsp mustard and few curry leaves. splutter the tempering',
        'now add 1 onion, 1 tsp ginger garlic paste and saute until golden brown',
        'further, add 2 tomato and saute until they turn soft and mushy',
        'add 1 potato, 1 carrot, ½ capsicum, 5 beans, 2 tbsp peas and 2 tbsp sweet corn.'],
    ),
    Recipe(
      title: 'Aloo Chana',
      imageUrl: 'assets/b3.jpeg',
      category: 'Veg Curry',
      ingredients: [ '2 tbsp oil',
          '1 tsp cumin',
          '1 tsp mustard',
          'few curry leaves',
          '1 onion, finely chopped',
          '1 tsp ginger garlic paste',
          '2 tomato, chopped',
          '1 potato, chopped',
          '1 carrot, chopped'],
      instructions: [
        'firstly, to prepare the masala paste, in a mixer jar take ¾ cup coconut, 2 tbsp cashew and 2 tbsp vegetable masala',
        'grind to smooth paste adding ½ cup water. keep aside',
        'in a large kadai heat 2 tbsp oil, add 1 tsp cumin, 1 tsp mustard and few curry leaves. splutter the tempering',
        'now add 1 onion, 1 tsp ginger garlic paste and saute until golden brown',
        'further, add 2 tomato and saute until they turn soft and mushy',
        'add 1 potato, 1 carrot, ½ capsicum, 5 beans, 2 tbsp peas and 2 tbsp sweet corn.'],
    ),
    Recipe(
      title: 'Aloo Mashroom',
      imageUrl: 'assets/b4.jpeg',
      category: 'Veg Curry',
      ingredients: [ '2 tbsp oil',
          '1 tsp cumin',
          '1 tsp mustard',
          'few curry leaves',
          '1 onion, finely chopped',
          '1 tsp ginger garlic paste',
          '2 tomato, chopped',
          '1 potato, chopped',
          '1 carrot, chopped'],
      instructions: [
        'firstly, to prepare the masala paste, in a mixer jar take ¾ cup coconut, 2 tbsp cashew and 2 tbsp vegetable masala',
        'grind to smooth paste adding ½ cup water. keep aside',
        'in a large kadai heat 2 tbsp oil, add 1 tsp cumin, 1 tsp mustard and few curry leaves. splutter the tempering',
        'now add 1 onion, 1 tsp ginger garlic paste and saute until golden brown',
        'further, add 2 tomato and saute until they turn soft and mushy',
        'add 1 potato, 1 carrot, ½ capsicum, 5 beans, 2 tbsp peas and 2 tbsp sweet corn.'],
    ),
    Recipe(
      title: 'Beans Curry',
      imageUrl: 'assets/b5.jpeg',
      category: 'Veg Curry',
      ingredients: [ '2 tbsp oil',
          '1 tsp cumin',
          '1 tsp mustard',
          'few curry leaves',
          '1 onion, finely chopped',
          '1 tsp ginger garlic paste',
          '2 tomato, chopped',
          '1 potato, chopped',
          '1 carrot, chopped'],
      instructions: [
        'firstly, to prepare the masala paste, in a mixer jar take ¾ cup coconut, 2 tbsp cashew and 2 tbsp vegetable masala',
        'grind to smooth paste adding ½ cup water. keep aside',
        'in a large kadai heat 2 tbsp oil, add 1 tsp cumin, 1 tsp mustard and few curry leaves. splutter the tempering',
        'now add 1 onion, 1 tsp ginger garlic paste and saute until golden brown',
        'further, add 2 tomato and saute until they turn soft and mushy',
        'add 1 potato, 1 carrot, ½ capsicum, 5 beans, 2 tbsp peas and 2 tbsp sweet corn.'],
    ),
    Recipe(
      title: 'Daal Tadaka',
      imageUrl: 'assets/b6.jpeg',
      category: 'Veg Curry',
      ingredients: [ '2 tbsp oil',
          '1 tsp cumin',
          '1 tsp mustard',
          'few curry leaves',
          '1 onion, finely chopped',
          '1 tsp ginger garlic paste',
          '2 tomato, chopped',
          '1 potato, chopped',
          '1 carrot, chopped'],
      instructions: [
        'firstly, to prepare the masala paste, in a mixer jar take ¾ cup coconut, 2 tbsp cashew and 2 tbsp vegetable masala',
        'grind to smooth paste adding ½ cup water. keep aside',
        'in a large kadai heat 2 tbsp oil, add 1 tsp cumin, 1 tsp mustard and few curry leaves. splutter the tempering',
        'now add 1 onion, 1 tsp ginger garlic paste and saute until golden brown',
        'further, add 2 tomato and saute until they turn soft and mushy',
        'add 1 potato, 1 carrot, ½ capsicum, 5 beans, 2 tbsp peas and 2 tbsp sweet corn.'],
    ),
    // Cakes recipes
    Recipe(
      title: 'Eggless Chocolate',
      imageUrl: 'assets/c1.jpeg',
      category: 'Cakes',
      ingredients: ['1 cup milk',
                    '¼ cup oil',
                    '1 tsp vanilla extract',
                    '1 tsp vinegar',
                    '½ cup sugar',
                    '1 cup maida'],
      instructions: ['firstly, in a large bowl take 1 cup milk, ¼ cup oil, 1 tsp vanilla extract, 1 tsp vinegar and ½ cup sugar',
                     'whisk and mix well making sure the sugar is dissolved completely',
                     'add 1 cup maida, 3 tbsp cocoa powder, 1 tsp baking powder, and ¼ tsp baking soda',
                     'mix well using the cut and fold method.',
                     'add milk as required and prepare a smooth lump-free batter.'],
    ),
    Recipe(
      title: 'Totti Frutti',
      imageUrl: 'assets/c2.jpeg',
      category: 'Cakes',
      ingredients: ['1 cup milk',
        '¼ cup oil',
        '1 tsp vanilla extract',
        '1 tsp vinegar',
        '½ cup sugar',
        '1 cup maida'],
      instructions: ['firstly, in a large bowl take 1 cup milk, ¼ cup oil, 1 tsp vanilla extract, 1 tsp vinegar and ½ cup sugar',
        'whisk and mix well making sure the sugar is dissolved completely',
        'add 1 cup maida, 3 tbsp cocoa powder, 1 tsp baking powder, and ¼ tsp baking soda',
        'mix well using the cut and fold method.',
        'add milk as required and prepare a smooth lump-free batter.'],
    ),
    Recipe(
      title: 'Clasic Chocolate',
      imageUrl: 'assets/c3.jpeg',
      category: 'Cakes',
      ingredients: ['1 cup milk',
      '¼ cup oil',
    '1 tsp vanilla extract',
    '1 tsp vinegar',
    '½ cup sugar',
    '1 cup maida'],
    instructions: ['firstly, in a large bowl take 1 cup milk, ¼ cup oil, 1 tsp vanilla extract, 1 tsp vinegar and ½ cup sugar',
    'whisk and mix well making sure the sugar is dissolved completely',
    'add 1 cup maida, 3 tbsp cocoa powder, 1 tsp baking powder, and ¼ tsp baking soda',
    'mix well using the cut and fold method.',
    'add milk as required and prepare a smooth lump-free batter.'],
    ),
    Recipe(
      title: 'Butter Cake',
      imageUrl: 'assets/c4.jpeg',
      category: 'Cakes',
      ingredients: ['1 cup milk',
        '¼ cup oil',
        '1 tsp vanilla extract',
        '1 tsp vinegar',
        '½ cup sugar',
        '1 cup maida'],
      instructions: ['firstly, in a large bowl take 1 cup milk, ¼ cup oil, 1 tsp vanilla extract, 1 tsp vinegar and ½ cup sugar',
        'whisk and mix well making sure the sugar is dissolved completely',
        'add 1 cup maida, 3 tbsp cocoa powder, 1 tsp baking powder, and ¼ tsp baking soda',
        'mix well using the cut and fold method.',
        'add milk as required and prepare a smooth lump-free batter.'],
    ),
    Recipe(
      title: 'Cup Cake',
      imageUrl: 'assets/d1.jpeg',
      category: 'Cakes',
      ingredients: ['1 cup milk',
        '¼ cup oil',
        '1 tsp vanilla extract',
        '1 tsp vinegar',
        '½ cup sugar',
        '1 cup maida'],
      instructions: ['firstly, in a large bowl take 1 cup milk, ¼ cup oil, 1 tsp vanilla extract, 1 tsp vinegar and ½ cup sugar',
        'whisk and mix well making sure the sugar is dissolved completely',
        'add 1 cup maida, 3 tbsp cocoa powder, 1 tsp baking powder, and ¼ tsp baking soda',
        'mix well using the cut and fold method.',
        'add milk as required and prepare a smooth lump-free batter.'],
    ),
    Recipe(
      title: 'Banana Cake',
      imageUrl: 'assets/d1.jpeg',
      category: 'Cakes',
      ingredients: ['1 cup milk',
        '¼ cup oil',
        '1 tsp vanilla extract',
        '1 tsp vinegar',
        '½ cup sugar',
        '1 cup maida'],
      instructions: ['firstly, in a large bowl take 1 cup milk, ¼ cup oil, 1 tsp vanilla extract, 1 tsp vinegar and ½ cup sugar',
        'whisk and mix well making sure the sugar is dissolved completely',
        'add 1 cup maida, 3 tbsp cocoa powder, 1 tsp baking powder, and ¼ tsp baking soda',
        'mix well using the cut and fold method.',
        'add milk as required and prepare a smooth lump-free batter.'],
    ),
    // Chicken recipes

  Recipe(
  title: 'Chiken Biriyani',
  imageUrl: 'assets/d1.jpeg',
  category: 'Chicken',
  ingredients: [
    'Chikken'
    '1 bunch palak',
    '4 cloves garlic' ,
    ' 2 inch ginger ',
    '3 chilli'],
    instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
      ' Boil for 2 minutes or until the palak is blanched',
      'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
      'Squeeze the water from the palak, and transfer to the mixer jar',
      'Add 4 cloves garlic',
      '2 inch ginger and 3 chilli',
      'Grind to fine paste without adding water keep aside',
      'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
  ),
  Recipe(
  title: 'Chiken Tikka',
  imageUrl: 'assets/d2.jpeg',
  category: 'Chicken',
    ingredients: [
      'Chikken'
          '1 bunch palak',
      '4 cloves garlic' ,
      ' 2 inch ginger ',
      '3 chilli'],
    instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
      ' Boil for 2 minutes or until the palak is blanched',
      'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
      'Squeeze the water from the palak, and transfer to the mixer jar',
      'Add 4 cloves garlic',
      '2 inch ginger and 3 chilli',
      'Grind to fine paste without adding water keep aside',
      'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
  ),
  Recipe(
  title: 'Chiken Curry',
  imageUrl: 'assets/d3.jpeg',
  category: 'Chicken',
    ingredients: [
      'Chikken'
          '1 bunch palak',
      '4 cloves garlic' ,
      ' 2 inch ginger ',
      '3 chilli'],
    instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
      ' Boil for 2 minutes or until the palak is blanched',
      'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
      'Squeeze the water from the palak, and transfer to the mixer jar',
      'Add 4 cloves garlic',
      '2 inch ginger and 3 chilli',
      'Grind to fine paste without adding water keep aside',
      'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
  ),
  Recipe(
  title: 'Tandoori Chiken',
  imageUrl: 'assets/d4.jpeg',
  category: 'Chicken',
    ingredients: [
      'Chikken'
          '1 bunch palak',
      '4 cloves garlic' ,
      ' 2 inch ginger ',
      '3 chilli'],
    instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
      ' Boil for 2 minutes or until the palak is blanched',
      'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
      'Squeeze the water from the palak, and transfer to the mixer jar',
      'Add 4 cloves garlic',
      '2 inch ginger and 3 chilli',
      'Grind to fine paste without adding water keep aside',
      'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
  ),
  Recipe(
  title: 'Mutton Curry',
  imageUrl: 'assets/d5.jpeg',
  category: 'Chicken',
    ingredients: [
      'Chikken'
          '1 bunch palak',
      '4 cloves garlic' ,
      ' 2 inch ginger ',
      '3 chilli'],
    instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
      ' Boil for 2 minutes or until the palak is blanched',
      'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
      'Squeeze the water from the palak, and transfer to the mixer jar',
      'Add 4 cloves garlic',
      '2 inch ginger and 3 chilli',
      'Grind to fine paste without adding water keep aside',
      'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
  ),
  Recipe(
  title: 'Chiken Korma',
  imageUrl: 'assets/d6.jpeg',
  category: 'Chicken',
    ingredients: [
      'Chikken'
          '1 bunch palak',
      '4 cloves garlic' ,
      ' 2 inch ginger ',
      '3 chilli'],
    instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
      ' Boil for 2 minutes or until the palak is blanched',
      'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
      'Squeeze the water from the palak, and transfer to the mixer jar',
      'Add 4 cloves garlic',
      '2 inch ginger and 3 chilli',
      'Grind to fine paste without adding water keep aside',
      'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
  ),

    // Sweets recipes
    Recipe(
      title: 'Gulab Jamun',
      imageUrl: 'assets/e1.jpeg',
      category: 'Sweets',
      ingredients: [
        'Chikken'
            '1 bunch palak',
        '4 cloves garlic' ,
        ' 2 inch ginger ',
        '3 chilli'],
      instructions: ['Firstly, in a saucepan take water and get to a boil. once the water comes to a boil, add 1 bunch palak and dip completely',
        ' Boil for 2 minutes or until the palak is blanched',
        'Drain off the palak and rinse in ice cold water to retain the colour of the palak',
        'Squeeze the water from the palak, and transfer to the mixer jar',
        'Add 4 cloves garlic',
        '2 inch ginger and 3 chilli',
        'Grind to fine paste without adding water keep aside',
        'In a large kadai, heat 2 tbsp ghee. add 1 tsp cumin and splutter'],
    ),
    Recipe(
      title: 'Besan Ladoo',
      imageUrl: 'assets/e2.jpeg',
      category: 'Sweets',
      ingredients: [
               '½ cup ghee / clarified butter',
               '2 cup besan / gram flour, coarse',
               '1 cup sugar',
               '4 pods cardamom / elachi',
               '2 tbsp melon seeds',
               '2 tbsp cashew / kaju, chopped'
      ],
      instructions: [
           'Firstly, in a large kadai heat ½ cup ghee and add 2 cup besan',
           'Roast on low flame until the besan is well combined with ghee. make sure to use coarse besan for grainy texture',
           'Continue to roast on low flame. if the mixture turns dry, add a tbsp of more ghee',
           'After 20 minutes, the besan starts to release ghee'],
    ),
    Recipe(
      title: 'Besan Burfi',
      imageUrl: 'assets/e3.jpeg',
      category: 'Sweets',
      ingredients: [
        '½ cup ghee / clarified butter',
        '2 cup besan / gram flour, coarse',
        '1 cup sugar',
        '4 pods cardamom / elachi',
        '2 tbsp melon seeds',
        '2 tbsp cashew / kaju, chopped'
      ],
      instructions: [
        'Firstly, in a large kadai heat ½ cup ghee and add 2 cup besan',
        'Roast on low flame until the besan is well combined with ghee. make sure to use coarse besan for grainy texture',
        'Continue to roast on low flame. if the mixture turns dry, add a tbsp of more ghee',
        'After 20 minutes, the besan starts to release ghee'],
    ),
    Recipe(
      title: 'Kaju Katli',
      imageUrl: 'assets/e4.jpeg',
      category: 'Sweets',
      ingredients: [
        '½ cup ghee / clarified butter',
        '2 cup kaju/ gram flour, coarse',
        '1 cup sugar',
        '4 pods cardamom / elachi',
        '2 tbsp melon seeds',
        '2 tbsp cashew / kaju, chopped'
      ],
      instructions: [
        'Firstly, in a large kadai heat ½ cup ghee and add 2 cup besan',
        'Roast on low flame until the besan is well combined with ghee. make sure to use coarse besan for grainy texture',
        'Continue to roast on low flame. if the mixture turns dry, add a tbsp of more ghee',
        'After 20 minutes, the besan starts to release ghee'],
    ),
    Recipe(
      title: 'Kheer',
      imageUrl: 'assets/e5.jpeg',
      category: 'Sweets',
      ingredients: ['½ cup semiya',
        '1 litre milk',
        '3 tbsp custard powder',
        '½ cup ghee / clarified butter',
        '4 pods cardamom / elachi',
        '2 tbsp melon seeds',
        '2 tbsp cashew / kaju, chopped'],
      instructions: [
        'Firstly, in a large kadai heat ½ cup ghee and add 2 cup besan',
        'Roast on low flame until the besan is well combined with ghee. make sure to use coarse besan for grainy texture',
        'Continue to roast on low flame. if the mixture turns dry, add a tbsp of more ghee',
        'After 20 minutes, the besan starts to release ghee'],
    ),
    Recipe(
      title: 'Jalebi ',
      imageUrl: 'assets/e6.jpeg',
      category: 'Sweets',
      ingredients: ['½ cup all purpose flour / maida'
        '1 tsp corn flour'
        '¼ tsp baking soda'
        '3 tbsp custard powder'
        '½ cup ghee / clarified butter',
        '4 pods cardamom / elachi',
        '2 tbsp melon seeds',
        '2 tbsp cashew / kaju, chopped'],
      instructions: [     'Firstly, in a large kadai heat ½ cup ghee and add 2 cup besan',
        'Roast on low flame until the besan is well combined with ghee. make sure to use coarse besan for grainy texture',
        'Continue to roast on low flame. if the mixture turns dry, add a tbsp of more ghee',
        'After 20 minutes, the besan starts to release ghee'],
    ),
   ];

  @override
  Widget build(BuildContext context) {
    // Define the categories
    List<String> categories = [
      'Breakfast',
      'Snacks',
      'Rice',
      'Veg Curry',
      'Cakes',
      'Chicken',
      'Sweets', // Added 'Sweets' category for sweet recipes
    ];

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Recipe List'),
          bottom: TabBar(
            isScrollable: true,
            tabs: categories.map((category) => Tab(text: category)).toList(),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: RecipeSearchDelegate(
                    recipes,
                    addFavorite: widget.addFavorite,
                    removeFavorite: widget.removeFavorite,
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyFavoritesPage(
                      favoriteRecipes: widget.favoriteRecipes,
                      addFavorite: widget.addFavorite,
                      removeFavorite: widget.removeFavorite,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        body: TabBarView(
          children: categories.map((category) {
            // Filter recipes by category
            List<Recipe> filteredRecipes = recipes.where((recipe) => recipe.category == category).toList();

            return ListView.builder(
              itemCount: filteredRecipes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(filteredRecipes[index].imageUrl),
                  title: Text(filteredRecipes[index].title),
                  subtitle: Text(filteredRecipes[index].category),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailPage(
                          recipe: filteredRecipes[index],
                          isFavorite: widget.favoriteRecipes.contains(filteredRecipes[index]),
                          addFavorite: widget.addFavorite,
                          removeFavorite: widget.removeFavorite,
                        ),
                      ),
                    );
                  },
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
