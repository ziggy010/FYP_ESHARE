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

  void onSwiperIndexChange() {
    for (int i = 0; i < homeTitle.length; i++) {
      homeTitle[i][1] = false;
    }
    homeTitle[0][1] = true;
  }
}
