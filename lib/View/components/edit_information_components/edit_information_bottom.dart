import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant.dart';

class EditInformationBottom extends StatelessWidget {
  final VoidCallback onTap;

  EditInformationBottom({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MyButton(
      onTap: onTap,
      height: 57.h,
      width: double.infinity,
      buttonColor: kSelectedColor,
      borderRadius: 16,
      textWidget: Text(
        'Edit',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'poppins',
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
