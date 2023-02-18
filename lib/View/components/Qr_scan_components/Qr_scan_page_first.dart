import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanPageFirst extends StatefulWidget {
  @override
  State<QrScanPageFirst> createState() => _QrScanPageFirstState();
}

class _QrScanPageFirstState extends State<QrScanPageFirst> {
  final qrKey = GlobalKey(debugLabel: 'QR');

  QRViewController? controller;

  Barcode? barcode;

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
          decoration: BoxDecoration(
            color: kContainerColor,
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
          child: buildQrView(context),
        )
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
        print(barcode.code);
      });
    });
  }
}
