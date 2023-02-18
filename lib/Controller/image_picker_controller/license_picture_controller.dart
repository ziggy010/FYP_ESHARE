import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/View/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class LicensePictureController extends GetxController {
  RxString licenseFrontImagePath = ''.obs;
  RxString licenseBackImagePath = ''.obs;

  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future getLicenseFrontImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      licenseFrontImagePath.value = image.path.toString();
      File file = File(image.path.toString());
      showDialog(
        context: context,
        builder: ((context) {
          return const Center(
            child: SpinKitSpinningLines(
              color: Colors.white,
              size: 50.0,
            ),
          );
        }),
      );
      await storage.ref('licenseFolder/licenseFront').putFile(file);

      Navigator.pop(context);

      MySnackbar.showSnackBar(context, 'Congratulation!',
          'License front image uploaded successfully', ContentType.success);

      Get.offAllNamed(HomePage.id);
    }
  }

  Future<String> downloadLicenseFront() async {
    String downloadUrl =
        await storage.ref('licenseFolder/licenseFront').getDownloadURL();

    return downloadUrl;
  }

  Future getLicenseBackImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      licenseBackImagePath.value = image.path.toString();
      File file = File(image.path.toString());
      showDialog(
        context: context,
        builder: ((context) {
          return const Center(
            child: SpinKitSpinningLines(
              color: Colors.white,
              size: 50.0,
            ),
          );
        }),
      );
      await storage.ref('licenseFolder/licenseBack').putFile(file);

      Navigator.pop(context);

      MySnackbar.showSnackBar(context, 'Congratulation!',
          'License back image uploaded successfully', ContentType.success);

      Get.offAllNamed(HomePage.id);
    }
  }

  Future<String> downloadLicenseBack() async {
    String downloadUrl =
        await storage.ref('licenseFolder/licenseBack').getDownloadURL();

    return downloadUrl;
  }
}
