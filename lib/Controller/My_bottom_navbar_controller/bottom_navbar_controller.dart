import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  var homeIcon = const Icon(
    Icons.home_rounded,
    color: Colors.white,
  ).obs;

  var savedIcon = const Icon(
    Icons.bookmark_border_rounded,
    color: Colors.white30,
  ).obs;

  changeHomeIcon(Icon value) {
    homeIcon.value = value;
  }

  changeSavedIcon(Icon value) {
    savedIcon.value = value;
  }
}
