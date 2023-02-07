import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/fill_details_components/fill_details_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class EditInformationTop extends StatelessWidget {
  const EditInformationTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: kContainerColor,
                  borderRadius: BorderRadius.circular(
                    8.r,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 35.sm,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        FillDetailsTop(),
      ],
    );
  }
}
