import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetFullName extends StatelessWidget {
  final String documentId;

  GetFullName({
    required this.documentId,
  });

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;

          return Text(
            'Hi ${data['full name']}!',
            style: TextStyle(
              color: Color.fromARGB(255, 174, 173, 173),
              fontFamily: 'poppins',
              fontSize: 12.sp,
            ),
          );
        } else {
          return Text('loading');
        }
      }),
    );
  }
}
