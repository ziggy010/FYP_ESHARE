import 'package:get/get.dart';

class FaqPageController extends GetxController {
  //observable variable from getx state management.
  RxBool textVisibility = false.obs;

  //observable variable from getx state management.
  RxInt heightSizedBox = 1.obs;

  //function to change visibility.
  changeVisibility() {
    if (textVisibility.isTrue) {
      textVisibility.value = false;
      heightSizedBox.value = 1;
    } else {
      textVisibility.value = true;
      heightSizedBox.value = 10;
    }
  }
}
