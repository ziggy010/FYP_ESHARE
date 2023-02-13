import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AddUserDetailsModel {
  Future addUserDetails({
    required String fullName,
    required String profession,
    required String companyName,
    required String email,
    required String number,
    required String registerEmail,
    required String address,
    required String website,
  }) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(registerEmail)
          .set(
        {
          'Full Name': fullName,
          'Profession': profession,
          'Company Name': companyName,
          'Email': email,
          'Website': website,
          'Address': address,
          'Number': number,
          'Register Email': registerEmail,
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
