import 'package:e_share/View/components/main_components/my_password_field.dart';
import 'package:e_share/View/components/main_components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterMid extends StatelessWidget {
  final TextEditingController registerEmailController;
  final TextEditingController registerPasswordController;
  final TextEditingController registerConfirmPasswordController;

  RegisterMid({
    required this.registerEmailController,
    required this.registerConfirmPasswordController,
    required this.registerPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextfield(
          textEditingController: registerEmailController,
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          hintText: 'Enter your email address',
          labelText: 'Email Address',
          bottomPadding: 32,
        ),
        MyPasswordField(
          textEditingController: registerPasswordController,
          keyboardType: TextInputType.visiblePassword,
          onSaved: (hello) {},
          hintText: 'Enter your password',
          labelText: 'Password',
        ),
        SizedBox(
          height: 32.h,
        ),
        MyPasswordField(
          textEditingController: registerConfirmPasswordController,
          keyboardType: TextInputType.visiblePassword,
          onSaved: (hello) {},
          hintText: 'Confirm password',
          labelText: 'Confirm Password',
        ),
      ],
    );
  }
}
