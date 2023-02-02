import 'package:card_swiper/card_swiper.dart';
import 'package:e_share/Model/about_us_model/about_us_model.dart';
import 'package:flutter/material.dart';

class AboutUsMid extends StatelessWidget {
  final _cards = AboutUsModel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Container(
        height: 300,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Swiper(
              itemHeight: 220,
              itemWidth: double.infinity,
              itemCount: _cards.cards.length,
              loop: true,
              duration: 1200,
              scrollDirection: Axis.vertical,
              layout: SwiperLayout.STACK,
              itemBuilder: (context, index) {
                return Container(
                  child: _cards.cards[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
