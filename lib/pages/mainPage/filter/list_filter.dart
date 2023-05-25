import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/mainPage/filter/list_dieary.dart';
import 'package:tamang_food_service/pages/mainPage/filter/list_price.dart';
import 'package:tamang_food_service/theme/theme.dart';

import 'btn_apply_filter.dart';
import 'list_categories.dart';

class ListFilter extends StatelessWidget {
  const ListFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          ListCategories(),
          ListDietary(),
          ListPriceRange(),
          Expanded(
            child: FractionallySizedBox(
              heightFactor: 0.8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: BtnApplyFilter(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
