import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScanPageSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          24.r,
        ),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Share this card',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'Scan this QR code to add this card to \nyour account',
                style: TextStyle(
                  color: Color(0x75FFFFFF),
                  fontFamily: 'poppins',
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            height: 238.h,
            width: 238.w,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 236, 235, 235),
              borderRadius: BorderRadius.circular(
                14.r,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FutureBuilder(
                future: GetCurrentUserModel.getCurrentUserId(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return QrImage(
                      data:
                          '${GetCurrentUserModel.name},${GetCurrentUserModel.profession},${GetCurrentUserModel.email},${GetCurrentUserModel.number},${GetCurrentUserModel.website}, ${GetCurrentUserModel.address}, ${GetCurrentUserModel.cardDesign}',
                      version: QrVersions.auto,
                      size: 200.0,
                      foregroundColor: Colors.black,
                    );
                  }
                  return Skeleton(height: 200, width: 200);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
