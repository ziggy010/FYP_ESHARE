import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Controller/my_visiting_card_controller/visiting_card.dart';
import 'package:e_share/View/components/main_components/my_card_details_container.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/View/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../View/my_detail_page.dart';

class CardDesignModel {
  // Get an instance of MyVistingCardController to update card design
  final MyVistingCardController _cardController =
      Get.put(MyVistingCardController());

  // Reference to the 'users' collection in Firestore
  CollectionReference ref = FirebaseFirestore.instance.collection('users');

  // Function called when a card design is tapped
  onTap(int cardNumber, BuildContext context) {
    // Update the 'Card Design' field for the current user in Firestore
    ref.doc(FirebaseAuth.instance.currentUser!.email).update(
      {'Card Design': cardNumber},
    );

    // Show a success snackbar
    MySnackbar.showSnackBar(context, 'Congratulation!',
        'Card design changed successfully.', ContentType.success);

    // Navigate to the home page
    Get.offAllNamed(HomePage.id);
  }
}
