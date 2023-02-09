import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePictureController extends GetxController {
  RxString imagePath = ''.obs;

  Future getImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      imagePath.value = image.path.toString();
      Navigator.pop(context);
    }
  }
}
