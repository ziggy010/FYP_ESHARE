import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GetCurrentUserModel {
  static String currentDocId = '';
  static String name = '';
  static String profession = '';
  static String email = '';
  static String companyName = '';
  static String number = '';
  static String website = '';
  static String address = '';

  static late Widget Loading;

  static Future getCurrentUserId() async {
    final docUser = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email);

    final snapshot = await docUser.get();
    // await Future.delayed(Duration(seconds: 1));
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .get()
        .then(
      (snapshot) {
        currentDocId = snapshot.data()!['Register Email'];
        name = snapshot.data()!['Full Name'];
        profession = snapshot.data()!['Profession'];
        email = snapshot.data()!['Email'];
        companyName = snapshot.data()!['Company Name'];
        number = snapshot.data()!['Number'];
        website = snapshot.data()!['Website'];
        address = snapshot.data()!['Address'];
      },
    );
  }
}
