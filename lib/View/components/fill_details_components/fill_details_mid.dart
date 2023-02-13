import 'package:e_share/View/components/main_components/my_textfield.dart';
import 'package:flutter/material.dart';

class FillDetailsMid extends StatelessWidget {
  final TextEditingController fullNameController;
  final TextEditingController professionController;
  final TextEditingController companyNameController;
  final TextEditingController designationController;
  final TextEditingController emailAddressController;
  final TextEditingController phoneNumberController;
  final TextEditingController websiteController;
  final TextEditingController addressController;

  FillDetailsMid({
    required this.companyNameController,
    required this.designationController,
    required this.emailAddressController,
    required this.fullNameController,
    required this.phoneNumberController,
    required this.professionController,
    required this.websiteController,
    required this.addressController,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextfield(
          textEditingController: fullNameController,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Full Name',
          labelText: 'Full Name',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: professionController,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Profession',
          labelText: 'Profession',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: companyNameController,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Company Name',
          labelText: 'Company Name',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: emailAddressController,
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          hintText: 'Email Address',
          labelText: 'Email Address',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: websiteController,
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          hintText: 'Website',
          labelText: 'Website',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: phoneNumberController,
          keyboardType: TextInputType.phone,
          onSaved: (hello) {},
          hintText: 'Phone Number',
          labelText: 'Phone Number',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: addressController,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Address',
          labelText: 'Address',
          bottomPadding: 19,
        ),
      ],
    );
  }
}
