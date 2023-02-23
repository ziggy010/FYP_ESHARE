import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetSavedCardDetailsModel {
  List savedCardList = [];

  Future getSavedCardDetails() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards')
        .get()
        .then((snapshot) {
      snapshot.docs.forEach(
        (document) {
          savedCardList.add(document.reference.id);
        },
      );
    });
  }
}
