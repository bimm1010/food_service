import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/list_data.dart';
import 'package:tamang_food_service/theme/theme.dart';

class ListPriceRange extends StatefulWidget {
  const ListPriceRange({super.key});

  @override
  State<ListPriceRange> createState() => _ListPriceRangeState();
}

var currentIndex = 0;

class _ListPriceRangeState extends State<ListPriceRange> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price range'.toUpperCase(),
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
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              listPrice.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: size.width * 0.070),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        currentIndex == index
                            ? kColorPrimaryTheme
                            : kColorTransparent,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        currentIndex == index
                            ? Colors.white
                            : kColorDefaultTextAndIcon,
                      ),
                      fixedSize: MaterialStateProperty.all(
                        Size(
                          size.width * 0.16,
                          size.height * 0.080,
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                      textStyle: MaterialStateProperty.all(
                        PrimaryFont.light(16),
                      )),
                  child: Text(
                    listPrice[index],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
