import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/View/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// This class controls the license picture functionality
class LicensePictureController extends GetxController {
  // These two variables will store the paths of the front and back images of the license
  RxString licenseFrontImagePath = ''.obs;
  RxString licenseBackImagePath = ''.obs;

  // Create a firebase_storage instance to interact with Firebase Storage
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  // This function gets the image for the front side of the license
  Future getLicenseFrontImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      // Set the licenseFrontImagePath variable to the path of the selected image
      licenseFrontImagePath.value = image.path.toString();
      File file = File(image.path.toString());

      // Show a loading dialog while the image is being uploaded to Firebase Storage
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

      // Upload the image to Firebase Storage
      await storage
          .ref('licenseFolder/${GetCurrentUserModel.email}_licenseFront')
          .putFile(file);

      // Remove the loading dialog after the upload is complete
      Navigator.pop(context);

      // Show a success snackbar to indicate that the upload was successful
      MySnackbar.showSnackBar(context, 'Congratulation!',
          'License front image uploaded successfully', ContentType.success);

      // Navigate to the home page
      Get.offAllNamed(HomePage.id);
    }
  }

  // This function downloads the front image of the license
  Future<String> downloadLicenseFront() async {
    String downloadUrl = await storage
        .ref('licenseFolder/${GetCurrentUserModel.email}_licenseFront')
        .getDownloadURL();

    return downloadUrl;
  }

  // This function gets the image for the back side of the license
  Future getLicenseBackImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      // Set the licenseBackImagePath variable to the path of the selected image
      licenseBackImagePath.value = image.path.toString();
      File file = File(image.path.toString());

      // Show a loading dialog while the image is being uploaded to Firebase Storage
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

      // Upload the image to Firebase Storage
      await storage
          .ref('licenseFolder/${GetCurrentUserModel.email}_licenseBack')
          .putFile(file);

      // Remove the loading dialog after the upload is complete
      Navigator.pop(context);

      MySnackbar.showSnackBar(context, 'Congratulation!',
          'License back image uploaded successfully', ContentType.success);

      Get.offAllNamed(HomePage.id);
    }
  }

  Future<String> downloadLicenseBack() async {
    String downloadUrl = await storage
        .ref('licenseFolder/${GetCurrentUserModel.email}_licenseBack')
        .getDownloadURL();

    return downloadUrl;
  }
}
