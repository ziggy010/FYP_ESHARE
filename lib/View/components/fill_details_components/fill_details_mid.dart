import 'package:e_share/View/components/main_components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FillDetailsMid extends StatelessWidget {
  const FillDetailsMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextfield(
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Full Name',
          labelText: 'Full Name',
          bottomPadding: 19,
        ),
        MyTextfield(
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Profession',
          labelText: 'Profession',
          bottomPadding: 19,
        ),
        MyTextfield(
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Company Name',
          labelText: 'Company Name',
          bottomPadding: 19,
        ),
        MyTextfield(
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Designation',
          labelText: 'Designation',
          bottomPadding: 19,
        ),
        MyTextfield(
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          hintText: 'Email Address',
          labelText: 'Email Address',
          bottomPadding: 19,
        ),
        MyTextfield(
          keyboardType: TextInputType.phone,
          onSaved: (hello) {},
          hintText: 'Phone Number',
          labelText: 'Phone Number',
          bottomPadding: 19,
        ),
      ],
    );
  }
}
