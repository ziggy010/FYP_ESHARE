import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GetSavedCardListModel {
  List savedCardList = [];

  setSavedNames() async {
    _savedNamesCopy = await _savedNames;
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
          savedCardList.add(document.reference.id);
          savedCardList = savedCardList.toSet().toList();
        },
      );
    });
    await setSavedNames();
  }

  Future<String> getData(String documentId, String keyValue) async {
    CollectionReference savedCardsFolder = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards');

    DocumentSnapshot snapshot = await savedCardsFolder.doc(documentId).get();

    if (snapshot.exists) {
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      return data[keyValue].toString();
    } else {
      throw Exception("Document does not exist");
    }
  }

  List<Map> _savedNamesCopy = [];

  Future<List<Map<String, dynamic>>> get _savedNames async {
    final processedData = <Map<String, dynamic>>[];
    for (final id in savedCardList) {
      try {
        processedData.add({id: await getData(id, 'Full Name')});
      } catch (e) {
        continue;
      }
    }
    return processedData;
  }

  List<Map> get savedCards => _savedNamesCopy;

  Future<void> filterUser(String query) async {
    final savedNames = List<Map<String, dynamic>>.from(await _savedNames);
    if (query.isEmpty) {
      _savedNamesCopy = savedNames;
    } else {
      _savedNamesCopy = savedNames
          .where(
            (data) => data.values.first.toLowerCase().contains(
                  query.toLowerCase(),
                ),
          )
          .toList();
    }
    print(savedCards);
  }
}
