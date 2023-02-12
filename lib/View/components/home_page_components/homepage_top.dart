import 'dart:io';

import 'package:e_share/Controller/image_picker_controller/profile_picture_controller.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_fullname.dart';
import 'package:e_share/Model/CRUD/read_documents/get_all_documents.dart';
import 'package:e_share/Model/CRUD/read_documents/get_full_name.dart';
import 'package:e_share/View/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePageTop extends StatefulWidget {
  const HomePageTop({super.key});

  @override
  State<HomePageTop> createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop>
    with TickerProviderStateMixin {
// CREATING ANIMATION CONTROLLERS

  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    super.initState();

    //initializing the duration and curves of animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final ProfilePictureController _profilePictureController =
      Get.put(ProfilePictureController(), permanent: true);

  final GetDocumentsModel _getDocumentsModel = GetDocumentsModel();

  final GetCurrentFullName _getCurrentFullName = GetCurrentFullName();

  @override
  Widget build(BuildContext context) {
    //home page top part component for simple accesss.
    return Padding(
      padding: EdgeInsets.only(
        right: 24.w,
        left: 24.w,
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -0.5),
          end: Offset.zero,
        ).animate(_animationController),
        child: FadeTransition(
          opacity: _animationController,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // FutureBuilder(
                  //   future: _getCurrentFullName.getCurrentFullName(),
                  //   builder: ((context, snapshot) {
                  //     return Text(
                  //       _getCurrentFullName.currentUser!.uid,
                  //     );
                  //   }),
                  // ),
                  Text(
                    'HI, Risab!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 174, 173, 173),
                      fontFamily: 'poppins',
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: const Color(0x99FFFFFF),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  )
                ],
              ),
              GestureDetector(onTap: () {
                Get.toNamed(ProfilePage.id);
              }, child: Obx(
                () {
                  return CircleAvatar(
                    radius: 22.r,
                    backgroundImage:
                        _profilePictureController.imagePath.isNotEmpty
                            ? FileImage(File(
                                _profilePictureController.imagePath.toString(),
                              ))
                            : AssetImage('images/profile.png') as ImageProvider,
                    backgroundColor: Colors.transparent,
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
