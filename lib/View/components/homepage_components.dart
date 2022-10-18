import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';

class HomePageTop extends StatelessWidget {
  const HomePageTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              'Hi, Risab',
              style: TextStyle(
                color: kGreyColor,
              ),
            )
          ],
        ),
      ],
    );
  }
}
