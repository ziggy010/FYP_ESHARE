import 'package:e_share/View/components/card_design_components/card_container.dart';
import 'package:flutter/material.dart';

import '../cards/Eshare_card3/Eshare3_horizontal.dart';

class PremiumDesign extends StatelessWidget {
  const PremiumDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          Column(
            children: [
              CardContainer(
                onTap: (() {}),
                content: EshareHorizontalThree(
                  name: 'Risab Tajale',
                  profession: 'App Developer',
                  email: 'tajale01@gmail.com',
                  number: '9813110577',
                  address: 'Kamalbinayak, Bhaktapur',
                  website: 'risab.com.np',
                ),
              ),
              // CardContainer(),
              // CardContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
