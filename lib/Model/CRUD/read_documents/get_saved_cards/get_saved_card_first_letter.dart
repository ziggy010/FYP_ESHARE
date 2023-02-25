import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../View/components/main_components/skeleton.dart';

class GetSavedCardFirstLetter extends StatelessWidget {
  final String documentId;

  GetSavedCardFirstLetter({
    required this.documentId,
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
            data['Full Name'][0],
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontSize: 17.sp,
            ),
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
