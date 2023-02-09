import 'package:e_share/Controller/card_details_controller/card_details_controller.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/edit_information_components/edit_information_bottom.dart';
import 'package:e_share/View/components/edit_information_components/edit_information_mid.dart';
import 'package:e_share/View/components/edit_information_components/edit_information_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditInformation extends StatelessWidget {
  static const String id = '/editInformation';

  final TextEditingController _editFullNameController = TextEditingController();
  final TextEditingController _editProfessionController =
      TextEditingController();
  final TextEditingController _editCompanyNameController =
      TextEditingController();
  final TextEditingController _editDesignationController =
      TextEditingController();
  final TextEditingController _editEmailAddressController =
      TextEditingController();
  final TextEditingController _editPhoneNumberController =
      TextEditingController();

  final CardDetailsController _cardDetailsController =
      Get.put(CardDetailsController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: EdgeInsets.only(
            top: 16.w,
            left: 24.h,
            right: 24.h,
          ),
          child: SafeArea(
            bottom: false,
            child: ListView(
              children: [
                EditInformationTop(),
                SizedBox(
                  height: 30.h,
                ),
                EditInformationMid(
                  editCompanyNameController: _editCompanyNameController,
                  editDesignationController: _editDesignationController,
                  editEmailAddressController: _editEmailAddressController,
                  editFullNameController: _editFullNameController,
                  editProfessionController: _editProfessionController,
                  edtiPhoneNumberController: _editPhoneNumberController,
                ),
                EditInformationBottom(
                  onTap: () {
                    _cardDetailsController.fullName.value =
                        _editFullNameController.text;
                    _cardDetailsController.profession.value =
                        _editProfessionController.text;
                    _cardDetailsController.companyName.value =
                        _editCompanyNameController.text;
                    _cardDetailsController.designation.value =
                        _editDesignationController.text;
                    _cardDetailsController.emailAddress.value =
                        _editEmailAddressController.text;
                    _cardDetailsController.phoneNumber.value =
                        _editPhoneNumberController.text;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
