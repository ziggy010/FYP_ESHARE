import 'package:e_share/Controller/card_details_controller/card_details_controller.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
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
  final TextEditingController editWebsiteController;
  final TextEditingController editAddressController;

  EditInformationMid({
    required this.editCompanyNameController,
    required this.editDesignationController,
    required this.editEmailAddressController,
    required this.editFullNameController,
    required this.editProfessionController,
    required this.edtiPhoneNumberController,
    required this.editWebsiteController,
    required this.editAddressController,
  });

  final CardDetailsController _cardDetailsController =
      Get.put(CardDetailsController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextfield(
          textEditingController: editFullNameController
            ..text = GetCurrentUserModel.name,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: _cardDetailsController.fullName.value,
          labelText: 'Full Name',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editProfessionController
            ..text = GetCurrentUserModel.profession,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: _cardDetailsController.profession.value,
          labelText: 'Profession',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editCompanyNameController
            ..text = GetCurrentUserModel.companyName,
          keyboardType: TextInputType.text,
          onSaved: (hello) {},
          hintText: 'Company Name',
          labelText: 'Company Name',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editEmailAddressController
            ..text = GetCurrentUserModel.email,
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          hintText: 'Email Address',
          labelText: 'Email Address',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editWebsiteController
            ..text = GetCurrentUserModel.website,
          keyboardType: TextInputType.emailAddress,
          onSaved: (hello) {},
          hintText: 'Website',
          labelText: 'Website',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: edtiPhoneNumberController
            ..text = GetCurrentUserModel.number,
          keyboardType: TextInputType.phone,
          onSaved: (hello) {},
          hintText: 'Phone Number',
          labelText: 'Phone Number',
          bottomPadding: 19,
        ),
        MyTextfield(
          textEditingController: editAddressController
            ..text = GetCurrentUserModel.address,
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
