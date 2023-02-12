import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetCurrentUserCardDetails extends StatefulWidget {
  final String documentId;
  final String DataKey;
  final TextStyle textStyle;

  GetCurrentUserCardDetails({
    required this.documentId,
    required this.DataKey,
    required this.textStyle,
  });

  @override
  State<GetCurrentUserCardDetails> createState() =>
      _GetCurrentUserCardDetailsState();
}

class _GetCurrentUserCardDetailsState extends State<GetCurrentUserCardDetails> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(widget.documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;

          return Text(
            '${data['${widget.DataKey}']}',
            style: widget.textStyle,
          );
        } else {
          return Text('loading');
        }
      }),
    );
  }
}
