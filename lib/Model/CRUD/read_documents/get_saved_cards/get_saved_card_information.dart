import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetSavedCardInformationModel extends StatelessWidget {
  final String documentId;
  final TextStyle textStyle;
  final String keyValue;

  GetSavedCardInformationModel({
    required this.documentId,
    required this.textStyle,
    required this.keyValue,
  });

  @override
  Widget build(BuildContext context) {
    CollectionReference savedCardsFolder = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards');

    return FutureBuilder<DocumentSnapshot>(
      future: savedCardsFolder.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;

          return Text(
            data[keyValue],
            style: textStyle,
          );
        }
        return Skeleton(
          height: 10,
          width: 120,
          padding: 5,
        );
      }),
    );
  }
}
