import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetailMid extends StatelessWidget {
  const SavedCardDetailMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 25.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ContactButton(
                text: 'Call',
                buttonColor: kContainerColor,
                borderColor: kContainerColor,
              ),
              SizedBox(
                width: 12.h,
              ),
              ContactButton(
                text: 'Email',
                buttonColor: Colors.transparent,
                borderColor: kContainerColor,
              ),
            ],
          ),
          Container(
            height: 42.h,
            width: 92.w,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(
                10.r,
              ),
              border: Border.all(
                color: Color(0xFFFFDDDD),
              ),
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
          )
        ],
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
