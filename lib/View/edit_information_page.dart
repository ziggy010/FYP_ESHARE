import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/View/home_page.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/edit_information_components/edit_information_bottom.dart';
import 'package:e_share/View/components/edit_information_components/edit_information_mid.dart';
import 'package:e_share/View/components/edit_information_components/edit_information_top.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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

  editInformationFunction({
    required String compareData,
    required TextEditingController textEditingController,
    required String firebaseKey,
  }) {
    if (compareData != textEditingController.text) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.email)
          .update(
        {'$firebaseKey': textEditingController.text},
      );
    }
  }

  batchUpdate(BuildContext context) {
    editInformationFunction(
      compareData: GetCurrentUserModel.name,
      textEditingController: _editFullNameController,
      firebaseKey: 'Full Name',
    );
    editInformationFunction(
      compareData: GetCurrentUserModel.profession,
      textEditingController: _editProfessionController,
      firebaseKey: 'Profession',
    );
    editInformationFunction(
      compareData: GetCurrentUserModel.companyName,
      textEditingController: _editCompanyNameController,
      firebaseKey: 'Company Name',
    );
    editInformationFunction(
      compareData: GetCurrentUserModel.email,
      textEditingController: _editEmailAddressController,
      firebaseKey: 'Email',
    );
    editInformationFunction(
      compareData: GetCurrentUserModel.website,
      textEditingController: _editWebisteController,
      firebaseKey: 'Website',
    );
    editInformationFunction(
      compareData: GetCurrentUserModel.number,
      textEditingController: _editPhoneNumberController,
      firebaseKey: 'Number',
    );
    editInformationFunction(
      compareData: GetCurrentUserModel.address,
      textEditingController: _editAddressController,
      firebaseKey: 'Address',
    );
    MySnackbar.showSnackBar(
      context,
      'Congrats',
      'Information edited successfully',
      ContentType.success,
    );
    Get.offAllNamed(HomePage.id);
  }

  finalInformationUpdate(BuildContext context) {
    if (GetCurrentUserModel.name == _editFullNameController.text &&
        GetCurrentUserModel.profession == _editProfessionController.text &&
        GetCurrentUserModel.companyName == _editCompanyNameController.text &&
        GetCurrentUserModel.email == _editEmailAddressController.text &&
        GetCurrentUserModel.website == _editWebisteController.text &&
        GetCurrentUserModel.number == _editPhoneNumberController.text &&
        GetCurrentUserModel.address == _editAddressController.text) {
      MySnackbar.showSnackBar(
        context,
        'Sorry',
        'Nothing to update',
        ContentType.failure,
      );
      // Get.back();
    } else {
      batchUpdate(context);
    }
  }

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
                  onTap: () {
                    finalInformationUpdate(context);
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
