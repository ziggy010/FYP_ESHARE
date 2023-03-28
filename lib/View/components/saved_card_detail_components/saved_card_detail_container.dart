import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SavedCardDetailContainer extends StatelessWidget {
  String name = '';
  String profession = '';
  String address = '';
  String number = '';
  String email = '';
  String website = '';
  String cardDesign = '';

  final String docId;

  SavedCardDetailContainer({
    required this.docId,
  });

  Future getSavedCardDetails() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards')
        .doc(docId)
        .get()
        .then(
      (snapshot) {
        name = snapshot.data()!['Full Name'];
        profession = snapshot.data()!['Profession'];
        email = snapshot.data()!['Email'];
        number = snapshot.data()!['Number'];
        website = snapshot.data()!['Website'];
        address = snapshot.data()!['Address'];
        cardDesign = snapshot.data()!['Card Design'];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        Container(
          height: 185.h,
          width: 185.w,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 236, 235, 235),
            borderRadius: BorderRadius.circular(
              14.r,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0.sm),
            child: FutureBuilder(
              future: getSavedCardDetails(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return QrImage(
                    data:
                        '$name,$profession,$email,$number,$website, $address, $cardDesign',
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
    );
  }
}
