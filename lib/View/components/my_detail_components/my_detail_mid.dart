import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDetailMid extends StatelessWidget {
  const MyDetailMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyButton(
            buttonColor: const Color(0xFF49495C),
            text: 'Update Design',
          ),
          MyButton(
            buttonColor: Colors.transparent,
            text: 'Edit Information',
            borderColor: const Color(0xFF49495C),
          ),
        ],
      ),
    );
  }
}
