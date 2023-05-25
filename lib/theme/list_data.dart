import '../model/menu.dart';

List<String> demoHeaderImages = [
  'assets/images/big_1.png',
  'assets/images/big_2.png',
  'assets/images/big_3.png',
  'assets/images/big_4.png',
];

List<Map<String, dynamic>> demoMediumCardData = [
  {
    "name": "Daylight Coffee",
    "image": "assets/images/medium_1.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.6,
    "delivertTime": 25,
  },
  {
    "name": "Mario Italiano",
    "image": "assets/images/medium_2.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.3,
    "delivertTime": 30,
  },
  {
    "name": "McDonald’s",
    "image": "assets/images/medium_3.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.8,
    "delivertTime": 25,
  },
  {
    "name": "The Halal Guys",
    "image": "assets/images/medium_4.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.6,
    "delivertTime": 25,
  },
];

List<Map<String, dynamic>> demoBestPickCardData = [
  {
    "name": "McDonald’s",
    "image": "assets/images/medium_3.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.8,
    "delivertTime": 25,
  },
  {
    "name": "The Halal Guys",
    "image": "assets/images/medium_4.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.6,
    "delivertTime": 10,
  },
  {
    "name": "Daylight Coffee",
    "image": "assets/images/medium_1.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.6,
    "delivertTime": 15,
  },
  {
    "name": "Mario Italiano",
    "image": "assets/images/medium_2.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.3,
    "delivertTime": 30,
  },
];

List<Map<String, dynamic>> food1 = [
  {
    "name": "McDonald’s",
    "image": listPicDemoAllRestaurants1,
    "location1": "Chinese",
    "location2": "American",
    "rating": 4.8,
    "totalRating": 200,
    "delivertTime": 25,
    "food": "Deshi food",
  },
];

List<Map<String, dynamic>> food2 = [
  {
    "name": "Cafe Brichor's",
    "image": listPicDemoAllRestaurants2,
    "location1": "Chinese",
    "location2": "American",
    "rating": 4.6,
    "totalRating": 200,
    "delivertTime": 25,
    "food": "Deshi food",
  },
];

List<Map<String, dynamic>> food3 = [
  {
    "name": "Daylight Cake",
    "image": listPicDemoAllRestaurants3,
    "location1": "Chinese",
    "location2": "American",
    "rating": 4.6,
    "totalRating": 200,
    "delivertTime": 25,
    "food": "Deshi food",
  },
];

List<Map<String, dynamic>> food4 = [
  {
    "name": "Mario Italiano",
    "image": listPicDemoAllRestaurants4,
    "location1": "Chinese",
    "location2": "American",
    "rating": 4.3,
    "totalRating": 200,
    "delivertTime": 30,
    "food": "Deshi food",
  },
];

List<String> listPicDemoAllRestaurants1 = [
  'assets/images/big_2.png',
  'assets/images/big_1.png',
  'assets/images/big_4.png',
  'assets/images/big_3.png',
];

List<String> listPicDemoAllRestaurants2 = [
  'assets/images/big_3.png',
  'assets/images/big_1.png',
  'assets/images/big_4.png',
  'assets/images/big_2.png',
];
List<String> listPicDemoAllRestaurants3 = [
  'assets/images/big_4.png',
  'assets/images/big_1.png',
  'assets/images/big_3.png',
  'assets/images/big_2.png',
];
List<String> listPicDemoAllRestaurants4 = [
  'assets/images/big_1.png',
  'assets/images/big_2.png',
  'assets/images/big_4.png',
  'assets/images/big_3.png',
];

List<String> listImageRestaurants = [
  'assets/images/Header-image.png',
  'assets/images/medium_1.png',
  'assets/images/medium_2.png',
  'assets/images/medium_3.png',
  'assets/images/medium_4.png',
];

List<Map<String, dynamic>> listFeaturedItems = [
  {
    "name": "Cookie Sandwich",
    "image": "assets/images/f_0.png",
    "location": "Chinese",
  },
  {
    "name": "Chow Fun",
    "image": "assets/images/f_1.png",
    "location": "Chinese",
  },
  {
    "name": "Dim Sum",
    "image": "assets/images/f_2.png",
    "location": "Chinese",
  },
  {
    "name": "Khia Cake",
    "image": "assets/images/f_3.png",
    "location": "Chinese",
  },
  {
    "name": "Combo Burger",
    "image": "assets/images/f_4.png",
    "location": "Chinese",
  },
  {
    "name": "Combo Sandwich",
    "image": "assets/images/f_5.png",
    "location": "Chinese",
  },
];

final List<CategoryMenu> listCategoryMenu = [
  CategoryMenu(
    category: 'Most Popular',
    items: [
      Menu(
        title: 'Cookie Sandwich',
        image: "assets/images/f_0.png",
        price: 10.0,
      ),
      Menu(
        title: 'Combo Burger',
        image: "assets/images/f_4.png",
        price: 10.0,
      ),
      Menu(
        title: 'Combo Sandwich',
        image: "assets/images/f_5.png",
        price: 10.0,
      ),
    ],
  ),
  CategoryMenu(
    category: 'Beef Lamb',
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_4.png",
        title: "Combo Burger",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_5.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Oyster Dish",
      ),
    ],
  ),
  CategoryMenu(
    category: 'Seafood',
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_6.png",
        title: "Oyster Dish",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_7.png",
        title: "Oyster On Ice",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_8.png",
        title: "Fried Rice on Pot",
      ),
    ],
  ),
  CategoryMenu(
    category: "Appetizers",
    items: [
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_5.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
    ],
  ),
  CategoryMenu(
    category: "Dim Sum",
    items: [
      Menu(
        price: 9.0,
        image: "assets/images/f_5.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/f_6.png",
        title: "Oyster Dish",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_7.png",
        title: "Oyster On Ice",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_8.png",
        title: "Fried Rice on Pot",
      ),
    ],
  ),
];

List<String> listFoodFilter = [
  "All",
  "Brunch",
  "Dinner",
  "Burgers",
  "Chinese",
  "Pizza",
  "Salads",
  "Soups",
  "Breakfast",
];

List<String> listDietary = [
  "any",
  "Vegetarian",
  "Vegan",
  "Gluten-Free",
];

List<String> listPrice = [
  "\$",
  "\$\$",
  "\$\$\$",
  "\$\$\$\$",
  "\$\$\$\$\$",
];
