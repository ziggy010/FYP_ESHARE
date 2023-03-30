import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class TryMidController extends GetxController {
  List allCards = [];

  Rx<List> foundCards = Rx<List>([]);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getSavedCardDetails();
    foundCards.value = allCards;
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
          allCards.add(document.reference.id);
          allCards = allCards.toSet().toList();
        },
      );
    });
  }

  // void filterCards(String cardName) {
  //   List result = [];
  //   if (cardName.isEmpty) {
  //     result = allCards;
  //   }
  //   else{
  //     result = allCards.where((element) => false)
  //   }
  // }
}
