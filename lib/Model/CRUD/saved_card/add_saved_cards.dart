import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddSavedCardsModel {
  static Future addSavedCard({
    required String? registeredEmail,
    required String savedCardFullName,
    required String savedCardEmail,
    required String savedCardProfession,
    required String savedCardPhoneNumber,
    required String savedCardWebsite,
    required String savedCardAddress,
    required String savedCardCardNumber,
  }) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(registeredEmail)
          .collection('SavedCards')
          .doc(savedCardEmail)
          .set(
        {
          'Full Name': savedCardFullName,
          'Profession': savedCardProfession,
          'Email': savedCardEmail,
          'Number': savedCardPhoneNumber,
          'Website': savedCardWebsite,
          'Address': savedCardAddress,
          'Card Design': savedCardCardNumber,
        },
      );
    } catch (e) {
      print('saved card error');
    }
  }
}
