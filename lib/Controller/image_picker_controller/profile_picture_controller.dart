import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/View/home_page.dart';
import 'package:e_share/View/profile_page.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePictureController extends GetxController {
  RxString imagePath = ''.obs; // Reactive variable to hold the image path

  final firebase_storage.FirebaseStorage
      storage = // Initialize Firebase storage instance
      firebase_storage.FirebaseStorage.instance;

  // Function to upload the image to Firebase storage
  Future uploadImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker(); // Initialize image picker
    final image =
        await _picker.pickImage(source: source); // Pick image from the source
    if (image != null) {
      // If an image was picked
      imagePath.value = image.path.toString(); // Set the image path
      File file =
          File(image.path.toString()); // Get the file from the image path
      showDialog(
        // Show a loading dialog while the image is being uploaded
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
      await storage // Upload the image to Firebase storage
          .ref('profileFolder/${GetCurrentUserModel.email}_profile')
          .putFile(file);

      Navigator.pop(context); // Close the loading dialog

      // Show a success snackbar
      MySnackbar.showSnackBar(context, 'Congratulation!',
          'Profile Picture uploaded successfully', ContentType.success);

      Get.offAllNamed(HomePage.id); // Navigate to the home page
    }
  }

  // Function to download the image from Firebase storage
  Future<String> downloadImage() async {
    String downloadUrl =
        await storage // Get the download URL from Firebase storage
            .ref('profileFolder/${GetCurrentUserModel.email}_profile')
            .getDownloadURL();

    return downloadUrl; // Return the download URL
  }
}
