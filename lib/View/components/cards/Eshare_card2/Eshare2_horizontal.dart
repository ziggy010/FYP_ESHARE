import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';

class EshareHorizontalTwo extends StatelessWidget {
  const EshareHorizontalTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kContainerColor,
        image: DecorationImage(
          image: AssetImage(
            'images/Eshare_card_2/eshare_2_horizontal.jpg',
          ),
        ),
      ),
    );
  }
}
