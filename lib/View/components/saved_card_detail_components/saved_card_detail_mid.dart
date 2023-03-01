import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/View/saved_card_page.dart';
import 'package:e_share/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SavedCardDetailMid extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  SavedCardDetailMid({
    required this.animation,
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 25.w,
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, 0.4),
          end: Offset.zero,
        ).animate(
          animationController,
        ),
        child: FadeTransition(
          opacity: animationController,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ContactButton(
                    text: 'Call',
                    buttonColor: kSelectedPrimary,
                    borderColor: kSelectedPrimary,
                  ),
                  SizedBox(
                    width: 12.h,
                  ),
                  ContactButton(
                    text: 'Email',
                    buttonColor: Colors.transparent,
                    borderColor: kSelectedPrimary,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  FirebaseFirestore.instance
                      .collection('users')
                      .doc(FirebaseAuth.instance.currentUser!.email)
                      .collection('SavedCards')
                      .doc(
                        Get.parameters['docId'],
                      )
                      .delete();

                  Get.offAllNamed(SavedCardsPage.id);
                  MySnackbar.showSnackBar(
                    context,
                    'Success',
                    'Successfully deleted card.',
                    ContentType.success,
                  );
                },
                child: Container(
                  height: 42.h,
                  width: 92.w,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                    border: Border.all(color: Color(0xFFFFDDDD)),
                  ),
                  child: Center(
                    child: Text(
                      'Delete',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'poppins',
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color borderColor;

  ContactButton({
    required this.text,
    required this.buttonColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 73.w,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'poppins',
          fontSize: 14.sp,
        ),
      )),
    );
  }
}
