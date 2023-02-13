import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RegisterModel {
  Future<void> RegisterUser({
    required BuildContext context,
    required String registerEmail,
    required String registerPassword,
    required String confirmRegisterPassword,
  }) async {
    //try to create user
    try {
      //checking if the confirm password is correct or not;
      if (confirmRegisterPassword == registerPassword) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: registerEmail,
          password: registerPassword,
        );
      } else {
        print('error, not same');
      }
    } on FirebaseAuthException catch (e) {}
  }
}
