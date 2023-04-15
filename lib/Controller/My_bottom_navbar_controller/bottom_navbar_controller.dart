// This is a controller for the bottom navigation bar.
// It contains observables for the home and saved icons, as well as font colors.
// The controller provides functions to change the icons and font colors.

import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  // Observable for the home icon
  var homeIcon = Icon(
    Icons.home_rounded,
    color: kSelectedColor,
  ).obs;

  // Observable for the saved icon
  var savedIcon = Icon(
    Icons.bookmark_border_rounded,
    color: Colors.white30,
  ).obs;

  // Observables for the font colors
  var firstText = kSelectedColor.obs;
  var secondText = Colors.white30.obs;

  // Function to change the home icon
  changeHomeIcon(Icon value) {
    homeIcon.value = value;
  }

  // Function to change the saved icon
  changeSavedIcon(Icon value) {
    savedIcon.value = value;
  }

  // Function to change the font colors
  changeFontColor(Color color1, Color color2) {
    firstText.value = color1;
    secondText.value = color2;
  }
}
