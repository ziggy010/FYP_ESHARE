import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CitizenshipPictureController extends GetxController {
  RxString citizenshipFrontImagePath = ''.obs;
  RxString citizenshipBackImagePath = ''.obs;

  Future getCitizenshipFrontImage(
      ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      citizenshipFrontImagePath.value = image.path.toString();
      Navigator.pop(context);
    }
  }

  Future getCitizenshipBackImage(
      ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      citizenshipBackImagePath.value = image.path.toString();
      Navigator.pop(context);
    }
  }
}
