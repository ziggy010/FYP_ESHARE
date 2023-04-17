import 'package:e_share/Controller/image_picker_controller/license_picture_controller.dart';
import 'package:e_share/View/components/main_components/bottom_modal_sheet.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constant.dart';
import '../citizenship_components/dotted_container.dart';
import '../main_components/my_button.dart';

class LicenseFirst extends StatelessWidget {
  final LicensePictureController _licensePictureController =
      Get.put(LicensePictureController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0.sm),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              FlipCard(
                fill: Fill.none,
                direction: FlipDirection.VERTICAL,
                side: CardSide.FRONT,
                front: FutureBuilder(
                  future: _licensePictureController.downloadLicenseFront(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        height: 190.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(snapshot.data),
                            // fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      );
                    } else if (snapshot.connectionState ==
                            ConnectionState.done &&
                        snapshot.hasData == false) {
                      return DottedContainer(
                        text: 'License Front',
                      );
                    } else {
                      return Skeleton(height: 190, width: double.infinity);
                    }
                  },
                ),
                back: FutureBuilder(
                  future: _licensePictureController.downloadLicenseBack(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        height: 190.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(14.r),
                          image: DecorationImage(
                            image: NetworkImage(snapshot.data),
                            // fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else if (snapshot.connectionState ==
                            ConnectionState.done &&
                        snapshot.hasData == false) {
                      return DottedContainer(
                        text: 'License Back',
                      );
                    } else {
                      return Skeleton(height: 190, width: double.infinity);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info_outline,
                    color: Color(
                      0x50FFFFFF,
                    ),
                  ),
                  SizedBox(
                    width: 9.h,
                  ),
                  Expanded(
                    child: Text(
                      '''At E-share, the privacy and security of our users' personal information and documents is a top priority. Rest assured that we do not store or have access to any of your personal documents uploaded to our platform. ''',
                      style: TextStyle(
                        color: Color(0x70FFFFFF),
                        fontFamily: 'poppins',
                        fontSize: 10.sp,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 20.h,
            ),
            child: MyButton(
              height: 57.h,
              width: double.infinity,
              buttonColor: kSelectedColor,
              borderRadius: 16,
              textWidget: Text(
                'Upload Your front image',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 16.sp,
                ),
              ),
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: ((context) {
                    return MyBottomModalSheetContainer(
                      cameraOnTap: () {
                        _licensePictureController.getLicenseFrontImage(
                          ImageSource.camera,
                          context,
                        );
                      },
                      galleryOnTap: () {
                        _licensePictureController.getLicenseFrontImage(
                          ImageSource.gallery,
                          context,
                        );
                      },
                    );
                  }),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
