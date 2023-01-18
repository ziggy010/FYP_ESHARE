import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  var homeIcon = Icon(
    Icons.home_rounded,
    color: kSelectedColor,
  ).obs;

  var savedIcon = Icon(
    Icons.bookmark_border_rounded,
    color: Colors.white30,
  ).obs;

  var firstText = kSelectedColor.obs;
  var secondText = Colors.white30.obs;

  changeHomeIcon(Icon value) {
    homeIcon.value = value;
  }

  changeSavedIcon(Icon value) {
    savedIcon.value = value;
  }

  changeFontColor(Color color1, Color color2) {
    firstText.value = color1;
    secondText.value = color2;
  }
}
