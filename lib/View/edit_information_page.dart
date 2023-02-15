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
  final TextEditingController _editWebisteController = TextEditingController();
  final TextEditingController _editAddressController = TextEditingController();

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
                  editAddressController: _editAddressController,
                  editWebsiteController: _editWebisteController,
                ),
                EditInformationBottom(
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
