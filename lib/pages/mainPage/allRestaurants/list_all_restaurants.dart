import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/mainPage/allRestaurants/food2_detail.dart';
import 'package:tamang_food_service/pages/mainPage/allRestaurants/food3_detail.dart';
import 'package:tamang_food_service/pages/mainPage/allRestaurants/food4_detail.dart';

import 'food1_detail.dart';

class ListAllRestaurants extends StatelessWidget {
  const ListAllRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Food1Detail(),
        Food2Detail(),
        Food3Detail(),
        Food4Detail(),
      ],
    );
  }
}
