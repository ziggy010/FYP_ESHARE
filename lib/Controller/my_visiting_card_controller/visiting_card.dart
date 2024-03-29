import 'package:e_share/Controller/image_picker_controller/citizenship_picture_controller.dart';
import 'package:e_share/Controller/image_picker_controller/license_picture_controller.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare4_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare_4_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_vertical_card.dart';
import 'package:e_share/View/components/cards/premium_card_two.dart/premium2_horizontal.dart';
import 'package:e_share/View/components/cards/premium_card_two.dart/premium2_vertical.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class MyVistingCardController extends GetxController {
  late CitizenshipPictureController citizenshipPictureController;

  @override
  Widget getHorizontalCard() {
    switch (GetCurrentUserModel.cardDesign) {
      case 1:
        return EshareHorizontalCard();

      case 2:
        return EshareHorizontalTwo();

      case 3:
        return EshareHorizontalThree(
          fullNameWidget: Text(
            GetCurrentUserModel.name,
            style: basicTextStyle(font: 'lobster', fontSize: 24),
          ),
          professionWidget: Text(
            GetCurrentUserModel.profession,
            style: basicTextStyle(font: 'poppins', fontSize: 12),
          ),
          addressWidget: Text(
            GetCurrentUserModel.address,
            style: basicTextStyle(font: 'poppins', fontSize: 10),
          ),
          phoneNumberWidget: Text(
            GetCurrentUserModel.number,
            style: basicTextStyle(font: 'poppins', fontSize: 10),
          ),
          emailWidget: Text(
            GetCurrentUserModel.email,
            style: basicTextStyle(font: 'poppins', fontSize: 10),
          ),
          websiteWidget: Text(
            GetCurrentUserModel.website,
            style: basicTextStyle(font: 'poppins', fontSize: 10),
          ),
        );

      case 4:
        return EshareHorizontalFour();

      case 5:
        return PremiumHorizontalTwo();

      default:
        return EshareHorizontalCard();
    }
  }

  List getVerticalCard() {
    final CitizenshipPictureController citizenshipController =
        Get.put(CitizenshipPictureController());

    final LicensePictureController licenseController =
        Get.put(LicensePictureController());

    switch (GetCurrentUserModel.cardDesign) {
      case 1:
        return [
          EshareVerticalCard(),
          CitizenshipWidget(controller: citizenshipController),
          LicenseWidget(licenseController: licenseController),
        ];

      case 2:
        return [
          EshareVerticalTwo(),
          CitizenshipWidget(controller: citizenshipController),
          LicenseWidget(licenseController: licenseController),
        ];

      case 3:
        return [
          EshareVerticalThree(),
          CitizenshipWidget(controller: citizenshipController),
          LicenseWidget(licenseController: licenseController),
        ];

      case 4:
        return [
          EshareVerticalFour(),
          CitizenshipWidget(controller: citizenshipController),
          LicenseWidget(licenseController: licenseController),
        ];

      case 5:
        return [
          PremiumVerticalTwo(),
          CitizenshipWidget(controller: citizenshipController),
          LicenseWidget(licenseController: licenseController),
        ];

      default:
        return [
          EshareVerticalCard(),
          CitizenshipWidget(controller: citizenshipController),
          LicenseWidget(licenseController: licenseController),
        ];
    }
  }
}

class LicenseWidget extends StatelessWidget {
  const LicenseWidget({
    Key? key,
    required this.licenseController,
  }) : super(key: key);

  final LicensePictureController licenseController;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: licenseController.downloadLicenseFront(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return Container(
            decoration: BoxDecoration(
              color: kBackgroundColor,
              image: DecorationImage(
                image: NetworkImage(snapshot.data),
                fit: BoxFit.cover,
              ),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData == false) {
          return Container(
            color: kContainerColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.upload_file_outlined,
                    color: Colors.white,
                    size: 40.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Upload your License',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 15.sp,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
        } else {
          // return Skeleton(height: 190, width: double.infinity);
          return Container(
            color: kContainerColor,
            child: const Center(
                child: SpinKitSpinningLines(
              color: Colors.white,
              size: 50.0,
            )),
          );
        }
      },
    );
  }
}

class CitizenshipWidget extends StatelessWidget {
  const CitizenshipWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CitizenshipPictureController controller;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.downloadCitizenshipFront(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return Container(
            decoration: BoxDecoration(
              color: kContainerColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(snapshot.data),
                fit: BoxFit.cover,
              ),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData == false) {
          return Container(
            color: kContainerColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.upload_file_outlined,
                    color: Colors.white,
                    size: 40.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Upload your Citizenship',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 15.sp,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
        } else {
          // return Skeleton(height: 190, width: double.infinity);
          return Container(
            color: kContainerColor,
            child: const Center(
              child: SpinKitSpinningLines(
                color: Colors.white,
                size: 50.0,
              ),
            ),
          );
        }
      },
    );
  }
}
