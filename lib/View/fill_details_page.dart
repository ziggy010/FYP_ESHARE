import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_bottom.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_mid.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillDetailsPage extends StatelessWidget {
  const FillDetailsPage({super.key});
  static const String id = '/fillDetails';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: ListView(
              children: [
                FillDetailsTop(),
                SizedBox(height: 33.h),
                FillDetailsMid(),
                SizedBox(height: 33.h),
                FillDetailsBottom()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
