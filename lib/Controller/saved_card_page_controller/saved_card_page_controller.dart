import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../Model/saved_card_page_model/saved_card_list.dart';

class SavedCardPageController extends GetxController {
  List allSavedCardList = [
    // SavedCardList(
    //   name: 'Risab Tajale',
    // ),
  ];

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

  Future getSavedCardDetails() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards')
        .get()
        .then((snapshot) {
      snapshot.docs.forEach(
        (document) {
          allSavedCardList.add(SavedCardList(name: document.reference.id));
          var seen = Set<String>();
          allSavedCardList = allSavedCardList
              .where((element) => seen.add(element.name))
              .toList();
          foundSavedCard.value = allSavedCardList;
        },
      );
    });
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
