import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SavedCardPageController extends GetxController {
  List allCards = []; // List to store all saved card IDs
  List finalCards =
      []; // List to store final saved card details after fetching from Firestore
  Rx<List> foundCards =
      Rx<List>([]); // Rx variable to track changes in filtered card list

  Future getSavedCardDetails() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards')
        .get()
        .then((snapshot) {
      // Fetch all saved card IDs and add them to allCards list
      snapshot.docs.forEach(
        (document) {
          allCards.add(document.reference.id);
          allCards = allCards.toSet().toList();
        },
      );

      // Fetch details of each saved card and add them to finalCards list
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

      // Remove duplicates from finalCards list and update foundCards Rx variable
      final jsonList = finalCards.map((e) => jsonEncode(e)).toList();
      final uniqueJsonList = jsonList.toSet().toList();
      final result = uniqueJsonList.map((e) => jsonDecode(e)).toList();
      finalCards = result;
      foundCards.value = finalCards;
    });
  }

  // Filter saved card list based on cardName string
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
