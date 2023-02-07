import 'package:e_share/Controller/card_details_controller/card_details_controller.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_bottom.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_mid.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_top.dart';
import 'package:e_share/View/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FillDetailsPage extends StatelessWidget {
  static const String id = '/fillDetails';

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _designationController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: ListView(
              children: [
                FillDetailsTop(),
                SizedBox(height: 33.h),
                FillDetailsMid(
                  fullNameController: _fullNameController,
                  professionController: _professionController,
                  companyNameController: _companyNameController,
                  designationController: _designationController,
                  emailAddressController: _emailAddressController,
                  phoneNumberController: _phoneNumberController,
                ),
                SizedBox(height: 33.h),
                FillDetailsBottom(
                  onTap: () {
                    Get.toNamed(HomePage.id);
                    _cardDetailsController.fullName.value =
                        _fullNameController.text;
                    _cardDetailsController.profession.value =
                        _professionController.text;
                    _cardDetailsController.companyName.value =
                        _companyNameController.text;
                    _cardDetailsController.designation.value =
                        _designationController.text;
                    _cardDetailsController.emailAddress.value =
                        _emailAddressController.text;
                    _cardDetailsController.phoneNumber.value =
                        _phoneNumberController.text;
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
