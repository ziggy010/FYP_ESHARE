import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class LicensePictureController extends GetxController {
  RxString licenseFrontImagePath = ''.obs;
  RxString licenseBackImagePath = ''.obs;

  Future getLicenseFrontImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      licenseFrontImagePath.value = image.path.toString();
      Navigator.pop(context);
    }
  }

  Future getLicenseBackImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      licenseBackImagePath.value = image.path.toString();
      Navigator.pop(context);
    }
  }
}
