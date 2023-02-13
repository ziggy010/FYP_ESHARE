import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetCurrentUserModel {
  static String currentDocId = '';
  static String name = '';
  static String profession = '';

  static Future getCurrentUserId() async {
    final docUser = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email);

    final snapshot = await docUser.get();
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .get()
        .then(
      (snapshot) {
        currentDocId = snapshot.data()!['register email'];
        name = snapshot.data()!['full name'];
        profession = snapshot.data()!['Profession'];
      },
    );
  }
}
