import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../Model/saved_card_page_model/saved_card_list.dart';

class SavedCardPageController extends GetxController {
  final allSavedCardList = [
    // SavedCardList(
    //   name: 'Risab Tajale',
    // ),
    // SavedCardList(
    //   name: 'Aashma Rai',
    // ),
    // SavedCardList(
    //   name: 'Sirish donda',
    // ),
    // SavedCardList(
    //   name: 'Andrew Suwal',
    // ),
    // SavedCardList(
    //   name: 'Rushan Phanju',
    // ),
    // SavedCardList(
    //   name: 'Nischhal Shrestha',
    // ),
    // SavedCardList(
    //   name: 'Rohan Awal',
    // ),
    // SavedCardList(
    //   name: 'Anish Koju',
    // ),
    // SavedCardList(
    //   name: 'Rozen Awal',
    // ),
    // SavedCardList(
    //   name: 'Trilok Thapa',
    // ),
  ];

  // Future getAllSavedCard() async {
  //   await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(FirebaseAuth.instance.currentUser!.email)
  //       .collection('SavedCards')
  //       .get()
  //       .then((snapshot) {
  //     snapshot.docs.forEach(
  //       (document) {
  //         allSavedCardList.add(
  //           SavedCardList(name: document.reference.id),
  //         );
  //       },
  //     );
  //   });
  // }

  Rx<List> foundSavedCard = Rx<List>([]);

  @override
  void onInit() {
    super.onInit();
    foundSavedCard.value = allSavedCardList;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void filterSavedCard(String cardName) {
    List results = [];
    if (cardName.isEmpty) {
      results = allSavedCardList;
    } else {
      results = allSavedCardList
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(cardName.toLowerCase()))
          .toList();
    }
    foundSavedCard.value = results;
  }
}
