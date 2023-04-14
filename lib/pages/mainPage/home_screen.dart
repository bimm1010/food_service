import 'package:flutter/material.dart';
import 'package:tamang_food_service/pages/locationScreen/find_location.dart';
import 'package:tamang_food_service/theme/theme.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Delivery to'.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: kColorPrimaryTheme),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('$FindLocationRestaurant');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'HayStreet, Perth ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.black,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Filter',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
