import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/Model/CRUD/add_user_details_model/add_user_details.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
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
                  onTap: () async {
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

                    if (_fullNameController.text.isEmpty &&
                        _professionController.text.isEmpty &&
                        _companyNameController.text.isEmpty &&
                        _emailAddressController.text.isEmpty &&
                        _websiteController.text.isEmpty &&
                        _phoneNumberController.text.isEmpty &&
                        _addressController.text.isEmpty) {
                      MySnackbar.showSnackBar(
                        context,
                        'Fill all the details',
                        'Please fill all the details to register your account.',
                        ContentType.failure,
                      );
                      Navigator.pop(context);
                    } else {
                      //registering the user
                      await _registerModel.RegisterUser(
                        context: context,
                        registerEmail: registerEmail,
                        registerPassword: registerPassword,
                        confirmRegisterPassword: confirmRegisterPassword,
                      );

                      await _addUserDetailsModel.addUserDetails(
                        fullName: _fullNameController.text,
                        profession: _professionController.text,
                        companyName: _companyNameController.text,
                        email: _emailAddressController.text,
                        number: _phoneNumberController.text,
                        registerEmail: registerEmail,
                        website: _websiteController.text,
                        address: _addressController.text,
                      );

                      Navigator.pop(context);

                      Get.offAllNamed(AuthPage.id);
                    }
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
