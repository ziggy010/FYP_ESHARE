import 'dart:ui';

import 'package:e_share/Main%20files/constant.dart';
import 'package:get/get.dart';

class FabController extends GetxController {
  var backgroundColor = kBackgroundColor.obs;

  changeBackgroundColor(Color color) {
    backgroundColor.value = color;
  }
}
