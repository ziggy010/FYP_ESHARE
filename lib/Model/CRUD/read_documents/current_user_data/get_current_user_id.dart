import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetCurrentUserModel {
  static User? currentUser = FirebaseAuth.instance.currentUser;

  static String currentDocId = '';

  static Future getCurrentUserId() async {
    await FirebaseFirestore.instance
        .collection('users')
        .where('register email', isEqualTo: currentUser?.email)
        .get()
        .then(
          (snapshot) => snapshot.docs.forEach((element) {
            currentDocId = element.reference.id;
          }),
        );
  }
}
