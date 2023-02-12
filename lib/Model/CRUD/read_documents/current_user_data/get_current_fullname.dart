import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetCurrentFullName {
  User? currentUser = FirebaseAuth.instance.currentUser;

  List currentDocId = [];

  Future getCurrentFullName() async {
    await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: currentUser?.email)
        .get()
        .then(
          (snapshot) => snapshot.docs.forEach((element) {
            currentDocId.add(element.reference.id);
          }),
        );
  }
}
