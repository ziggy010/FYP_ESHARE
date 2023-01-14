import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_container.dart';

class FreeDesign extends StatelessWidget {
  const FreeDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          Column(
            children: const [
              CardContainer(),
              CardContainer(),
              CardContainer(),
              CardContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
