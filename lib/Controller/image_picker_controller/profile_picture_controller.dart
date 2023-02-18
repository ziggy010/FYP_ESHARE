import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/View/home_page.dart';
import 'package:e_share/View/profile_page.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePictureController extends GetxController {
  RxString imagePath = ''.obs;

  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future uploadImage(ImageSource source, BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      imagePath.value = image.path.toString();
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
      await storage.ref('profileFolder/profile').putFile(file);

      Navigator.pop(context);

      MySnackbar.showSnackBar(context, 'Congratulation!',
          'Profile Picture uploaded successfully', ContentType.success);

      Get.offAllNamed(HomePage.id);
    }
  }

  Future<String> downloadImage() async {
    String downloadUrl =
        await storage.ref('profileFolder/profile').getDownloadURL();

    return downloadUrl;
  }
}
