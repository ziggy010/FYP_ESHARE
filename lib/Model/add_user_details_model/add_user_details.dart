import 'package:cloud_firestore/cloud_firestore.dart';

class AddUserDetailsModel {
  Future addUserDetails({
    required String fullName,
    required String profession,
    required String companyName,
    required String email,
    required String number,
  }) async {
    await FirebaseFirestore.instance.collection('users').add(
      {
        'full name': fullName,
        'Profession': profession,
        'Company Name': companyName,
        'Email': email,
        'number': number,
      },
    );
  }
}
