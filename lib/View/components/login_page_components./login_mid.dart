import 'package:e_share/View/components/main_components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginMid extends StatelessWidget {
  const LoginMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextfield(
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          ObscureText: false,
          hintText: 'Email address',
          labelText: 'Email address',
        ),
        SizedBox(
          height: 30.h,
        ),
        MyTextfield(
          keyboardType: TextInputType.visiblePassword,
          onSaved: (hello) {},
          ObscureText: true,
          hintText: 'Password',
          labelText: 'Password',
        ),
      ],
    );
  }
}
