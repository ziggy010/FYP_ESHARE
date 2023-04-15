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
    // Reference to the collection of saved cards for the current user
    CollectionReference savedCardsFolder = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards');

    return FutureBuilder<DocumentSnapshot>(
      // Get the document with the given documentId from the savedCardsFolder
      future: savedCardsFolder.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          // Extract the data from the document snapshot
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;

          // Return the first letter of the Full Name field as a Text widget
          return Text(
            data['Full Name'][0],
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontSize: 17.sp,
            ),
          );
        }
        // Return a Skeleton widget as a placeholder while waiting for the data
        return Skeleton(
          height: 6,
          width: 20,
        );
      }),
    );
  }
}
