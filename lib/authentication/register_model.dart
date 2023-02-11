import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RegisterModel {
  void RegisterUser({
    required BuildContext context,
    required String registerEmail,
    required String registerPassword,
    required String confirmRegisterPassword,
  }) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: SpinKitSpinningLines(
            color: Colors.white,
            size: 50.0,
          ),
        );
      },
    );

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
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
    }
  }
}
