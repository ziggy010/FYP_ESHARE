import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SavedCardPageController extends GetxController {
  List allCards = [];

  List finalCards = [];

  Rx<List> foundCards = Rx<List>([]);

  Future getSavedCardDetails() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards')
        .get()
        .then((snapshot) {
      snapshot.docs.forEach(
        (document) {
          allCards.add(document.reference.id);
          allCards = allCards.toSet().toList();
        },
      );

      allCards.forEach((element) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.email)
            .collection('SavedCards')
            .doc(element)
            .get()
            .then(
              (value) => finalCards.add({
                'Name': value.data()!['Full Name'],
                'docId': element,
                'profession': value.data()!['Profession'],
              }),
            );
      });
      final jsonList = finalCards.map((e) => jsonEncode(e)).toList();
      final uniqueJsonList = jsonList.toSet().toList();
      final result = uniqueJsonList.map((e) => jsonDecode(e)).toList();
      finalCards = result;
      foundCards.value = finalCards;
    });
  }

  void filterCards(String cardName) {
    List result = [];
    if (cardName.isNotEmpty) {
      result = finalCards
          .where((element) =>
              element.toString().toLowerCase().contains(cardName.toLowerCase()))
          .toList();
    } else {
      result = finalCards;
    }
    foundCards.value = result;
  }
}
