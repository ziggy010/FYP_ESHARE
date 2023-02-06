import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Main files/constant.dart';

class DottedContainer extends StatelessWidget {
  final String text;
  const DottedContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(20.r),
      dashPattern: [4, 3],
      strokeCap: StrokeCap.square,
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 190.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kContainerColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cloud_upload_outlined,
                color: Color.fromARGB(255, 211, 209, 209),
                size: 60.sm,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Upload ${text} photo page here.',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 11.sp,
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
