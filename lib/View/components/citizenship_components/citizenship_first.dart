import 'package:e_share/Controller/image_picker_controller/citizenship_picture_controller.dart';
import 'package:e_share/View/components/main_components/bottom_modal_sheet.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Main files/constant.dart';
import 'package:flip_card/flip_card.dart';

import 'dotted_container.dart';

class CitizenshipFirst extends StatelessWidget {
  final CitizenshipPictureController _citizenshipPictureController =
      Get.put(CitizenshipPictureController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const FlipCard(
                fill: Fill.none,
                direction: FlipDirection.VERTICAL,
                side: CardSide.FRONT,
                front: DottedContainer(
                  text: 'Citizenship front',
                ),
                back: DottedContainer(
                  text: 'Citizenship back',
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
                'Upload Your front page',
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
                    builder: (context) {
                      return MyBottomModalSheetContainer(
                        cameraOnTap: () {
                          _citizenshipPictureController
                              .getCitizenshipFrontImage(
                            ImageSource.camera,
                            context,
                          );
                        },
                        galleryOnTap: () {
                          _citizenshipPictureController
                              .getCitizenshipFrontImage(
                            ImageSource.gallery,
                            context,
                          );
                        },
                      );
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
