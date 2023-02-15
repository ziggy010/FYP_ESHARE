import 'dart:io';

import 'package:e_share/Controller/image_picker_controller/profile_picture_controller.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_card_details.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/main_components/bottom_modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileTop extends StatelessWidget {
  final ProfilePictureController _profilePictureController =
      Get.put(ProfilePictureController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Obx(
                (() {
                  return CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Colors.transparent,
                    backgroundImage: _profilePictureController
                            .imagePath.isNotEmpty
                        ? FileImage(
                            File(
                              _profilePictureController.imagePath.toString(),
                            ),
                          )
                        : AssetImage('images/profile.png') as ImageProvider,
                  );
                }),
              ),
              SizedBox(
                height: 12.h,
              ),
              GestureDetector(
                onTap: () {
                  // _profilePictureController.getImage();
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: ((context) {
                      return MyBottomModalSheetContainer(
                        cameraOnTap: () {
                          _profilePictureController.getImage(
                            ImageSource.camera,
                            context,
                          );
                        },
                        galleryOnTap: () {
                          _profilePictureController.getImage(
                            ImageSource.gallery,
                            context,
                          );
                        },
                      );
                    }),
                  );
                },
                child: Text(
                  'Change picture',
                  style: TextStyle(
                    color: Color.fromARGB(255, 184, 184, 184),
                    fontFamily: 'poppins',
                    fontSize: 11.sp,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 30.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder(
                future: GetCurrentUserModel.getCurrentUserId(),
                // initialData: InitialData,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text(
                      GetCurrentUserModel.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 20.sp,
                      ),
                    );
                  }
                  return Skeleton(height: 22, width: 120);
                },
              ),
              FutureBuilder(
                future: GetCurrentUserModel.getCurrentUserId(),
                // initialData: InitialData,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text(
                      GetCurrentUserModel.profession,
                      style: TextStyle(
                        color: Color.fromARGB(255, 225, 223, 223),
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                      ),
                    );
                  }
                  return Skeleton(height: 15, width: 90, padding: 7);
                },
              ),
              SizedBox(
                height: 3.h,
              ),
              FutureBuilder(
                future: GetCurrentUserModel.getCurrentUserId(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text(
                      GetCurrentUserModel.companyName,
                      style: TextStyle(
                        color: Color.fromARGB(255, 225, 223, 223),
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                      ),
                    );
                  }
                  return Skeleton(
                    height: 15,
                    width: 70,
                    padding: 7,
                  );
                },
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
