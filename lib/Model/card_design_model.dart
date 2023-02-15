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
  final MyVistingCardController _cardController =
      Get.put(MyVistingCardController());

  CollectionReference ref = FirebaseFirestore.instance.collection('users');

  onTap(int cardNumber, BuildContext context) {
    ref.doc(FirebaseAuth.instance.currentUser!.email).update(
      {'Card Design': cardNumber},
    );

    MySnackbar.showSnackBar(context, 'Congratulation!',
        'Card design changed successfully.', ContentType.success);

    Get.offAllNamed(HomePage.id);
  }
}
