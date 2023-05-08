import 'package:flutter/material.dart';
import 'package:tamang_food_service/theme/theme.dart';

class ListFeaturedItems extends StatelessWidget {
  const ListFeaturedItems({
    super.key,
    required this.image,
    required this.name,
    required this.location,
  });
  final String image;
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.20,
            child: Image.asset(image),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              child: Text(
                name,
                style: PrimaryFont.light(16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                const Text('\$\$'),
                const Padding(
                  padding: EdgeInsets.only(
                      left: defaultPadding, right: defaultPadding - 10),
                  child: CircleAvatar(
                    backgroundColor: kColorTextField,
                    radius: 2.0,
                  ),
                ),
                Text(location)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
