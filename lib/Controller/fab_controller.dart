import 'dart:async';
import 'dart:ui';

import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//creating class which extends getx controlelr
class FabController extends GetxController {
  late AnimationController animationControllerOption;
  late Animation animationOption;
  //creating observable variables/
  var backgroundColor = kBackgroundColor.obs;
  var isFabPressed = false.obs;
  var height = 0.obs;
  var width = 187.obs;
  var innerHeight = 0.obs;

  //creating methods to change value

  changeBackgroundColor() {
    if (isFabPressed.value == false) {
      backgroundColor.value = kBackgroundColor;
    } else {
      backgroundColor.value = Color.fromARGB(153, 17, 18, 21);
    }
  }

  changeIsFab() {
    isFabPressed.value = !isFabPressed.value;
  }

  changeContainer() {
    if (isFabPressed.value == true) {
      height.value = 208;
      innerHeight.value = 48;
    } else {
      height.value = 0;
      innerHeight.value = 0;
    }
  }

  initializeAnimation() {
    animationControllerOption.forward();
  }
}
