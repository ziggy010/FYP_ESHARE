import 'dart:async';
import 'dart:ui';

import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// creating a class which extends GetxController
class FabController extends GetxController {
  // declare variables
  late AnimationController animationControllerOption;
  late Animation animationOption;

  // create observable variables
  var backgroundColor = kBackgroundColor.obs;
  var isFabPressed = false.obs;
  var height = 0.obs;
  var width = 187.obs;
  var innerHeight = 0.obs;

  // methods to change the values of the variables
  changeBackgroundColor() {
    if (isFabPressed.value == false) {
      backgroundColor.value = kBackgroundColor;
    } else {
      backgroundColor.value = Color.fromARGB(255, 32, 32, 32);
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
