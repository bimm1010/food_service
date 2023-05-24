import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamang_food_service/theme/theme.dart';

class FilterMainScreen extends StatelessWidget {
  const FilterMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        title: Text(
          'Filter',
          style: PrimaryFont.light(16).copyWith(
            color: kColorDefaultTextAndIcon,
          ),
        ),
        centerTitle: true,
        backgroundColor: kColorTransparent,
        elevation: 0,
      ),
      body: const ListFilter(),
    );
  }
}

class ListFilter extends StatelessWidget {
  const ListFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('list filter');
  }
}
