import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/list_data.dart';
import 'package:tamang_food_service/theme/theme.dart';

class ListCategories extends StatefulWidget {
  const ListCategories({super.key});

  @override
  State<ListCategories> createState() => _ListCategoriesState();
}

var currentIndex = 0;

class _ListCategoriesState extends State<ListCategories> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'categories'.toUpperCase(),
              style: PrimaryFont.light(16).copyWith(color: kColorTextField),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(kColorTextField),
                textStyle: MaterialStateProperty.all(
                  PrimaryFont.light(size.height * 0.018),
                ),
              ),
              child: Text(
                'clear all'.toUpperCase(),
              ),
            )
          ],
        ),
        Wrap(
          runSpacing: size.width * 0.05,
          children: List.generate(
            listFoodFilter.length,
            (index) => ElevatedButton(
              onPressed: () {
                setState(() {
                  currentIndex = index;
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(currentIndex == index
                    ? kColorPrimaryTheme
                    : kColorTransparent),
                elevation: MaterialStateProperty.all(0),
                foregroundColor: MaterialStateProperty.all(
                  currentIndex == index
                      ? Colors.white
                      : kColorDefaultTextAndIcon,
                ),
                textStyle: MaterialStateProperty.all(
                  PrimaryFont.medium(size.height * 0.016),
                ),
                fixedSize: MaterialStateProperty.all(
                  Size(
                    size.width * 0.30,
                    size.height * 0.060,
                  ),
                ),
              ),
              child: Text(
                listFoodFilter[index].toUpperCase(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
