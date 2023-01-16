import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  var homeIcon = 'icons/home.png'.obs;
  var savedIcon = 'icons/saved_card_2.png'.obs;

  changeHomeIcon(String value) {
    homeIcon.value = value;
  }

  changeSavedIcon(String value) {
    savedIcon.value = value;
  }
}
