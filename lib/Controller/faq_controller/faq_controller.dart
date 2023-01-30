import 'package:get/get.dart';

class FaqPageController extends GetxController {
  RxBool textVisibility = false.obs;

  RxInt heightSizedBox = 1.obs;

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
