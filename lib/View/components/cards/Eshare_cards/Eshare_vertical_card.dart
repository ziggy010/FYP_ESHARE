import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';

class EshareVerticalCard extends StatelessWidget {
  const EshareVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kContainerColor,
        image: DecorationImage(
          image: AssetImage(
            'images/card1.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
