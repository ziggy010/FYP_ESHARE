import 'package:e_share/Controller/saved_card_page_controller/saved_card_page_controller.dart';
import 'package:e_share/Model/CRUD/saved_card/add_saved_cards.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:e_share/View/saved_card_page.dart';
import 'package:e_share/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanPageFirst extends StatefulWidget {
  @override
  State<QrScanPageFirst> createState() => _QrScanPageFirstState();
}

class _QrScanPageFirstState extends State<QrScanPageFirst> {
  final SavedCardPageController _savedCardPageController = Get.put(
    SavedCardPageController(),
    permanent: true,
  );

  final qrKey = GlobalKey(debugLabel: 'QR');

  QRViewController? controller;

  Barcode? barcode;

  late String scannedData;
  List finalScannedData = [];

  bool buttonVisibility = false;

  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Scan this QR code to add this card to \n your account',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 14.sp,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 70.h,
        ),
        Container(
          height: 238.h,
          width: 238.w,
          child: buildQrView(context),
        ),
        SizedBox(
          height: 50.h,
        ),
        Visibility(
          visible: buttonVisibility,
          child: MyButton(
            height: 40,
            width: 120,
            buttonColor: kSelectedColor,
            borderRadius: 12,
            textWidget: const Text(
              'Save Card',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppins',
              ),
            ),
            onTap: () {
              setState(() {
                finalScannedData = scannedData.split(',');
              });
              AddSavedCardsModel.addSavedCard(
                registeredEmail: FirebaseAuth.instance.currentUser!.email,
                savedCardFullName: finalScannedData[0],
                savedCardProfession: finalScannedData[1],
                savedCardEmail: finalScannedData[2],
                savedCardPhoneNumber: finalScannedData[3],
                savedCardWebsite: finalScannedData[4],
                savedCardAddress: finalScannedData[5],
                savedCardCardNumber: finalScannedData[6],
              );

              Get.toNamed(SavedCardsPage.id);
              // print('scanned data');
              // print(finalScannedData);
              // print(finalScannedData.length);
              // _savedCardPageController.allSavedCardList.add(
              //   SavedCardList(
              //     name: finalScannedData[0],
              //   ),
              // );
              // print(_savedCardPageController.allSavedCardList.length);
            },
          ),
        ),
      ],
    );
  }

  Widget buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderRadius: 10.r,
        borderWidth: 10,
        borderLength: 20,
        borderColor: Colors.white,
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });

    controller.scannedDataStream.listen((barcode) {
      setState(() {
        this.barcode = barcode;
        scannedData = barcode.code!;
        buttonVisibility = true;
        // print(barcode.code);
      });
    });
  }
}
