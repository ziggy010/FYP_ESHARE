import 'package:e_share/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LoginModel {
  void LoginUser(String email, String password, BuildContext context) async {
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

    try {
      // Attempt to sign in the user with Firebase
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // If successful, dismiss the loading spinner
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // Handle errors with different codes
      if (e.code == 'user-not-found') {
        kSnackBar(
          'User not found',
          'This email has not been registered yet.',
          Colors.red,
        );
      } else if (e.code == 'wrong-password') {
        kSnackBar(
          'Wrong Password',
          'Please enter correct password and try again.',
          Colors.red,
        );
      } else if (e.code == 'network-requrest-failed') {
        kSnackBar(
          'No internet',
          'Please connect to internet and try again.',
          Colors.red,
        );
      } else if (e.code == 'invalid-email') {
        kSnackBar(
          'Invalid Email',
          'You have entered an invalid e-mail address.',
          Colors.red,
        );
      } else {
        print(e.code);
      }
      // Dismiss the loading spinner
      Navigator.pop(context);
    }
  }
}
