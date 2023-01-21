import 'package:e_share/View/components/cards/e_share_horizontal_card.dart';

class HomePageText {
  List homeTitle = [
    [
      'Visiting card',
      true,
    ],
    [
      'Citizenship Card',
      false,
    ],
    [
      'License',
      false,
    ],
  ];

  List swiperContent = [
    EshareCard(),
    EshareCard(),
    EshareCard(),
    // 'images/try.png',
    // 'images/try.png',
  ];

  void changeTextOrder(int getIndex) {
    if (getIndex == 0) {}
  }

  void onSwiperIndexChange() {
    for (int i = 0; i < homeTitle.length; i++) {
      homeTitle[i][1] = false;
    }
    homeTitle[0][1] = true;
  }
}
