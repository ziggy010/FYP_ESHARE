import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetCurrentUserCardDetails extends StatelessWidget {
  final String documentId;
  final String DataKey;
  final TextStyle textStyle;
  final double height;
  final double width;

  GetCurrentUserCardDetails({
    required this.documentId,
    required this.DataKey,
    required this.textStyle,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;

          return Text(
            '${data['$DataKey']}',
            style: textStyle,
          );
        } else {
          return Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.20),
              borderRadius: BorderRadius.circular(8.r),
            ),
          );
        }
      }),
    );
  }
}
