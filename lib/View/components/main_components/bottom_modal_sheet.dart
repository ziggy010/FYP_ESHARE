import 'package:e_share/Controller/image_picker_controller/profile_picture_controller.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MyBottomModalSheetContainer extends StatelessWidget {
  final ProfilePictureController _profilePictureController =
      Get.find<ProfilePictureController>();

  final VoidCallback cameraOnTap;
  final VoidCallback galleryOnTap;

  MyBottomModalSheetContainer({
    required this.cameraOnTap,
    required this.galleryOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.h,
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.r),
          topRight: Radius.circular(18.r),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ModalSheetButton(
                  image: 'camera',
                  text: 'Use Camera',
                  onTap: cameraOnTap,
                ),
                ModalSheetButton(
                  image: 'gallery',
                  text: 'Choose from gallery',
                  onTap: galleryOnTap,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ModalSheetButton extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;

  ModalSheetButton({
    required this.image,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(
                14.r,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Image.asset(
                  'icons/${image}.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontSize: 10.sp,
            ),
          )
        ],
      ),
    );
  }
}
