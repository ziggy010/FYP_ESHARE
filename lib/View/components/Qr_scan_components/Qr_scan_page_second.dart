import 'package:e_share/Controller/card_details_controller/card_details_controller.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/main_components/my_card_details_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScanPageSecond extends StatelessWidget {
  final CardDetailsController _cardDetailsController =
      Get.put(CardDetailsController());

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
              child: Obx(
                () {
                  return QrImage(
                    data: '${_cardDetailsController.fullName.value},',
                    version: QrVersions.auto,
                    size: 200.0,
                    foregroundColor: Colors.black,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
