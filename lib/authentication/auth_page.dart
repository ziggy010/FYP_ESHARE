import 'package:e_share/Controller/my_visiting_card_controller/visiting_card.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/home_page.dart';
import 'package:e_share/View/login_page.dart';
import 'package:e_share/authentication/verify_email.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  static const String id = '/authpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // If the user is logged in, show the home page
          if (snapshot.hasData) {
            return VerifyEmailPage();
          }

          // If the user is not logged in, show the login page
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
