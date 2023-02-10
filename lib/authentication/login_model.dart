import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      //wrong email
      if (e.code == 'user-not-found') {
      }
      //wrong password
      else if (e.code == 'wrong-password') {}
    }
  }
}
