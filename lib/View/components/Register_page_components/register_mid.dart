import 'package:e_share/View/components/main_components/my_password_field.dart';
import 'package:e_share/View/components/main_components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterMid extends StatelessWidget {
  const RegisterMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextfield(
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          ObscureText: false,
          hintText: 'Enter your email address',
          labelText: 'Email Address',
        ),
        SizedBox(
          height: 32.h,
        ),
        MyPasswordField(
          keyboardType: TextInputType.visiblePassword,
          onSaved: (hello) {},
          hintText: 'Enter your password',
          labelText: 'Password',
        ),
        SizedBox(
          height: 32.h,
        ),
        MyPasswordField(
          keyboardType: TextInputType.visiblePassword,
          onSaved: (hello) {},
          hintText: 'Confirm password',
          labelText: 'Confirm Password',
        ),
      ],
    );
  }
}
