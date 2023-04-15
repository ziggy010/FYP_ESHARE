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

class CitizenshipPictureController extends GetxController {
  // Observables to hold the file paths of the citizenship images
  RxString citizenshipFrontImagePath = ''.obs;
  RxString citizenshipBackImagePath = ''.obs;

  // Firebase storage instance
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  // Function to get the citizenship front image from the camera or gallery
  Future getCitizenshipFrontImage(
      ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      citizenshipFrontImagePath.value = image.path.toString();
      File file = File(image.path.toString());

      // Show a loading dialog while the image is being uploaded
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

      // Upload the image to Firebase storage
      await storage
          .ref(
              'citizenshipFolder/${GetCurrentUserModel.email}_citizenshipFront')
          .putFile(file);

      // Hide the loading dialog
      Navigator.pop(context);

      // Show a snackbar to inform the user that the image has been uploaded successfully
      MySnackbar.showSnackBar(context, 'Congratulation!',
          'Citizenshp front image uploaded successfully', ContentType.success);

      // Navigate to the home page
      Get.offAllNamed(HomePage.id);
    }
  }

  // Function to download the citizenship front image from Firebase storage
  Future<String> downloadCitizenshipFront() async {
    String downloadUrl = await storage
        .ref('citizenshipFolder/${GetCurrentUserModel.email}_citizenshipFront')
        .getDownloadURL();

    return downloadUrl;
  }

  // Function to get the citizenship back image from the camera or gallery
  Future getCitizenshipBackImage(
      ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      citizenshipBackImagePath.value = image.path.toString();
      File file = File(image.path.toString());

      // Show a loading dialog while the image is being uploaded
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

      // Upload the image to Firebase storage
      await storage
          .ref('citizenshipFolder/${GetCurrentUserModel.email}_citizenshipBack')
          .putFile(file);

      // Hide the loading dialog
      Navigator.pop(context);

      // Show a snackbar to inform the user that the image has been uploaded successfully
      MySnackbar.showSnackBar(context, 'Congratulation!',
          'Citizenshp back image uploaded successfully', ContentType.success);

      Get.offAllNamed(HomePage.id);
    }
  }

  Future<String> downloadCitizenshipBack() async {
    String downloadUrl = await storage
        .ref('citizenshipFolder/${GetCurrentUserModel.email}_citizenshipBack')
        .getDownloadURL();

    return downloadUrl;
  }
}
