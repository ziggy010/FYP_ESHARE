import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetSavedCardInformationModel extends StatelessWidget {
  final String documentId;
  final TextStyle textStyle;
  final String keyValue;
  final Widget skeletonWidget;

  GetSavedCardInformationModel({
    required this.documentId,
    required this.textStyle,
    required this.keyValue,
    required this.skeletonWidget,
  });

  @override
  Widget build(BuildContext context) {
    // Get a reference to the collection of saved cards in Firestore
    CollectionReference savedCardsFolder = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards');

    // Use a FutureBuilder to get the document snapshot for the requested card
    return FutureBuilder<DocumentSnapshot>(
      future: savedCardsFolder.doc(documentId).get(),
      builder: ((context, snapshot) {
        // If the snapshot is ready and contains data, extract the desired value
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;

          // Return a Text widget with the extracted value and the specified style
          return Text(
            data[keyValue],
            style: textStyle,
          );
        }

        // If the snapshot is not yet ready, return the specified skeleton widget
        return skeletonWidget;
      }),
    );
  }
}
