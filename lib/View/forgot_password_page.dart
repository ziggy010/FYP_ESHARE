import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:e_share/View/components/main_components/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const String id = '/forgotPassword';

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _forgotEmailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _forgotEmailController.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _forgotEmailController.text);
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'user-not-found') {
        kSnackBar('User not found', 'This email has not been registered yet.');
      }
      //wrong password
      else if (e.code == 'missing-email') {
        kSnackBar('Email Missing', 'An email address must be provided.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kNavbarColor,
          title: Text(
            'Forgot Password',
            style: kAppBar,
          ),
        ),
        body: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    CircleAvatar(
                      backgroundColor: kContainerColor,
                      child: Center(
                        child: Image.asset(
                          'images/forgot_password.png',
                          height: 1700.h,
                          width: 170.h,
                        ),
                      ),
                      radius: 130.r,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Please Enter Your Email Address To \n Receive a Reset Link.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 15.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    MyTextfield(
                      textEditingController: _forgotEmailController,
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (hello) {},
                      hintText: 'Enter Your Email Address',
                      labelText: 'Email Address',
                      bottomPadding: 20,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    MyButton(
                      onTap: () {
                        passwordReset();
                      },
                      height: 60,
                      width: double.infinity,
                      buttonColor: kSelectedColor,
                      borderRadius: 15,
                      textWidget: Text(
                        'Send',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontSize: 16.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
