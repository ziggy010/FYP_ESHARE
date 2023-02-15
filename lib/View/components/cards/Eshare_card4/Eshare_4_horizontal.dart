import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalFour extends StatelessWidget {
  int cardNo = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(12.r),
        image: const DecorationImage(
          image: AssetImage('images/Eshare4b.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        // color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.only(
            top: 20.w,
            left: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    GetCurrentUserModel.name,
                    style: TextStyle(
                      color: Color(0xFFCE915B),
                      fontFamily: 'poppins',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    GetCurrentUserModel.profession,
                    style: TextStyle(
                      color: Color(0xFFCE915B),
                      fontFamily: 'poppins',
                      fontSize: 10.sp,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardRowDetail(
                        icon: Icons.phone_outlined,
                        text: GetCurrentUserModel.number,
                      ),
                      CardRowDetail(
                        icon: Icons.email_outlined,
                        text: GetCurrentUserModel.email,
                      ),
                      CardRowDetail(
                        icon: Icons.language_outlined,
                        text: GetCurrentUserModel.website,
                      ),
                      CardRowDetail(
                        icon: Icons.location_on_outlined,
                        text: GetCurrentUserModel.address,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardRowDetail extends StatelessWidget {
  final String text;
  final IconData icon;

  CardRowDetail({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color(0xFFCE915B),
          size: 15.sm,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFFCE915B),
            fontFamily: 'poppins',
            fontSize: 10.sp,
          ),
        )
      ],
    );
  }
}
