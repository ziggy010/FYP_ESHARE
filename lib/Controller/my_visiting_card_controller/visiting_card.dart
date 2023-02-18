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
import 'package:e_share/View/components/citizenship_components/dotted_container.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:firebase_storage/firebase_storage.dart';
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
        return EshareHorizontalThree();

      case 4:
        return EshareHorizontalFour();

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
