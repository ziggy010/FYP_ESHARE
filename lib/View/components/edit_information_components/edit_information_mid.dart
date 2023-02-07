import 'package:e_share/Controller/card_details_controller/card_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main_components/my_textfield.dart';

class EditInformationMid extends StatelessWidget {
  final TextEditingController editFullNameController;
  final TextEditingController editProfessionController;
  final TextEditingController editCompanyNameController;
  final TextEditingController editDesignationController;
  final TextEditingController editEmailAddressController;
  final TextEditingController edtiPhoneNumberController;

  EditInformationMid({
    required this.editCompanyNameController,
    required this.editDesignationController,
    required this.editEmailAddressController,
    required this.editFullNameController,
    required this.editProfessionController,
    required this.edtiPhoneNumberController,
  });

  final CardDetailsController _cardDetailsController =
      Get.put(CardDetailsController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextfield(
          textEditingController: editFullNameController
            ..text = _cardDetailsController.fullName.value,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: _cardDetailsController.fullName.value,
          labelText: 'Full Name',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editProfessionController
            ..text = _cardDetailsController.profession.value,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: _cardDetailsController.profession.value,
          labelText: 'Profession',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editCompanyNameController
            ..text = _cardDetailsController.companyName.value,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Company Name',
          labelText: 'Company Name',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editDesignationController
            ..text = _cardDetailsController.designation.value,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Designation',
          labelText: 'Designation',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editEmailAddressController
            ..text = _cardDetailsController.emailAddress.value,
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          hintText: 'Email Address',
          labelText: 'Email Address',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: edtiPhoneNumberController
            ..text = _cardDetailsController.phoneNumber.value,
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
