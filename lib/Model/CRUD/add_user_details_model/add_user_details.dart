import 'package:cloud_firestore/cloud_firestore.dart';

// Creating a class to add user details to Firestore
class AddUserDetailsModel {
  Future addUserDetails({
    required String fullName,
    required String profession,
    required String companyName,
    required String email,
    required String number,
    required String registerEmail,
    required String address,
    required String website,
  }) async {
    try {
      // Adding user details to 'users' collection with document ID as registerEmail
      await FirebaseFirestore.instance
          .collection('users')
          .doc(registerEmail)
          .set(
        {
          'Full Name': fullName,
          'Profession': profession,
          'Company Name': companyName,
          'Email': email,
          'Website': website,
          'Address': address,
          'Number': number,
          'Register Email': registerEmail,
          'Card Design': 1,
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
