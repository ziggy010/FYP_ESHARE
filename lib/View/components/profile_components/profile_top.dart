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
import 'package:shimmer/shimmer.dart';

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
              FutureBuilder(
                future: _profilePictureController.downloadImage(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    return CircleAvatar(
                      radius: 45.r,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(snapshot.data),
                    );
                  } else if (snapshot.hasData == false &&
                      snapshot.connectionState == ConnectionState.done) {
                    return CircleAvatar(
                      radius: 45.r,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('images/profile.png'),
                    );
                  } else {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.withOpacity(0.25),
                      highlightColor: Colors.white.withOpacity(0.6),
                      child: CircleAvatar(
                        radius: 45.r,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('images/profile.png'),
                      ),
                    );
                  }
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: ((context) {
                      return MyBottomModalSheetContainer(
                        cameraOnTap: () {
                          _profilePictureController
                              .uploadImage(
                                ImageSource.camera,
                                context,
                              )
                              .then((value) => print('done'));
                        },
                        galleryOnTap: () {
                          _profilePictureController
                              .uploadImage(
                                ImageSource.gallery,
                                context,
                              )
                              .then((value) => print('done'));
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
