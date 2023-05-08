import 'package:flutter/material.dart';

class ListFeaturedItems extends StatelessWidget {
  const ListFeaturedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 200,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.25,
                child: Image.asset('assets/images/f_0.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
