import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GetSavedCardListModel {
  List savedCardList = []; // list to store document IDs of saved cards

  setSavedNames() async {
    _savedNamesCopy = await _savedNames; // update saved names list
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
          savedCardList.add(document.reference.id); // add document ID to list
          savedCardList =
              savedCardList.toSet().toList(); // remove duplicate IDs
        },
      );
    });
    await setSavedNames(); // update saved names list
  }

  Future<String> getData(String documentId, String keyValue) async {
    CollectionReference savedCardsFolder = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('SavedCards');

    DocumentSnapshot snapshot = await savedCardsFolder.doc(documentId).get();

    if (snapshot.exists) {
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      return data[keyValue].toString(); // return value of specified key
    } else {
      throw Exception("Document does not exist");
    }
  }

  List<Map> _savedNamesCopy = [];

  Future<List<Map<String, dynamic>>> get _savedNames async {
    final processedData = <Map<String, dynamic>>[];
    for (final id in savedCardList) {
      try {
        processedData.add({
          id: await getData(id, 'Full Name')
        }); // add ID and Full Name to list
      } catch (e) {
        continue; // skip if document does not exist
      }
    }
    return processedData;
  }

  List<Map> get savedCards => _savedNamesCopy; // return saved names list

  Future<void> filterUser(String query) async {
    final savedNames = List<Map<String, dynamic>>.from(await _savedNames);
    if (query.isEmpty) {
      _savedNamesCopy = savedNames; // show all saved names if query is empty
    } else {
      _savedNamesCopy = savedNames
          .where(
            (data) => data.values.first.toLowerCase().contains(
                  query.toLowerCase(),
                ),
          )
          .toList(); // filter saved names by query
    }
    print(savedCards); // print filtered saved names list
  }
}
