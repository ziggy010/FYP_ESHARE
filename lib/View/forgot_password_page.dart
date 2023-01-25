import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:e_share/View/components/main_components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordPage extends StatelessWidget {
  static const String id = '/forgotPassword';

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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: kContainerColor,
                  radius: 130.r,
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
                MyTextfield(
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (hello) {},
                  hintText: 'Enter Your Email Address',
                  labelText: 'Email Address',
                  bottomPadding: 20,
                ),
                MyButton(
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
      ),
    );
  }
}
