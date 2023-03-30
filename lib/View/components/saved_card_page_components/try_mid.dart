import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/View/components/saved_card_page_components/try_mid_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TryMid extends StatelessWidget {
  final _tryMidController = Get.put(TryMidController());

  List finalCards = [];

  List getAllNames(String docId) {
    List result = [];
    FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards')
        .doc(docId)
        .get()
        .then((value) => result = value.data()!['Full Name']);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: FutureBuilder(
          future: _tryMidController.getSavedCardDetails(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return ListView.builder(
              itemCount: _tryMidController.allCards.length,
              itemBuilder: (BuildContext context, int index) {
                // print(_tryMidController.allCards[index]);
                // finalCards =
                getAllNames(_tryMidController.allCards[index]);
                return Text(
                  'hello',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
