class HomePageText {
  List homeTitle = [
    [
      'Visiting card',
      true,
    ],
    [
      'Passport',
      false,
    ],
    [
      'Citizenship Card',
      false,
    ],
  ];

  List swiperContent = [
    'images/try.png',
    'images/try.png',
    'images/try.png',
  ];

  void changeTextOrder(int getIndex) {
    if (getIndex == 0) {}
  }

  void onSwiperIndexChange(int getValue) {
    for (int i = 0; i < homeTitle.length; i++) {
      homeTitle[i][1] = false;
    }
    homeTitle[getValue][1] = true;
  }
}
