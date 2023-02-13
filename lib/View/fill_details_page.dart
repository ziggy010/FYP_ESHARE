import 'package:e_share/Controller/card_details_controller/card_details_controller.dart';
import 'package:e_share/Model/CRUD/add_user_details_model/add_user_details.dart';
import 'package:e_share/authentication/auth_page.dart';
import 'package:e_share/authentication/register_model.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_bottom.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_mid.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class FillDetailsPage extends StatefulWidget {
  static const String id = '/fillDetails';

  @override
  State<FillDetailsPage> createState() => _FillDetailsPageState();
}

class _FillDetailsPageState extends State<FillDetailsPage> {
  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _professionController = TextEditingController();

  final TextEditingController _companyNameController = TextEditingController();

  final TextEditingController _designationController = TextEditingController();

  final TextEditingController _emailAddressController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _websiteController = TextEditingController();

  final TextEditingController _addressController = TextEditingController();

  final CardDetailsController _cardDetailsController =
      Get.put(CardDetailsController(), permanent: true);

  late String registerEmail;
  late String registerPassword;
  late String confirmRegisterPassword;

  final RegisterModel _registerModel = RegisterModel();
  final AddUserDetailsModel _addUserDetailsModel = AddUserDetailsModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    registerEmail = Get.arguments[0];
    registerPassword = Get.arguments[1];
    confirmRegisterPassword = Get.arguments[2];
  }

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
                SizedBox(height: 33.h),
                FillDetailsTop(),
                SizedBox(height: 33.h),
                FillDetailsMid(
                  fullNameController: _fullNameController,
                  professionController: _professionController,
                  companyNameController: _companyNameController,
                  designationController: _designationController,
                  emailAddressController: _emailAddressController,
                  phoneNumberController: _phoneNumberController,
                  websiteController: _websiteController,
                  addressController: _addressController,
                ),
                SizedBox(height: 33.h),
                FillDetailsBottom(
                  onTap: () {
                    _cardDetailsController
                        .changeFullName(_fullNameController.text);

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

                    //registering the user
                    _registerModel.RegisterUser(
                      context: context,
                      registerEmail: registerEmail,
                      registerPassword: registerPassword,
                      confirmRegisterPassword: confirmRegisterPassword,
                    );

                    _addUserDetailsModel.addUserDetails(
                      fullName: _fullNameController.text,
                      profession: _professionController.text,
                      companyName: _companyNameController.text,
                      email: _emailAddressController.text,
                      number: _phoneNumberController.text,
                      registerEmail: registerEmail,
                      website: _websiteController.text,
                      address: _addressController.text,
                    );

                    Get.offAllNamed(AuthPage.id);
                    showDialog(
                      context: context,
                      builder: ((context) {
                        return const Center(
                          child: SpinKitSpinningLines(
                            color: Colors.white,
                            size: 50.0,
                          ),
                        );
                      }),
                    );
                    // Navigator.pop(context);
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
